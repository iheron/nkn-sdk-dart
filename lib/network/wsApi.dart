import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:nkn_sdk/configure/configure.dart';
import 'package:nkn_sdk/configure/seeds.dart';
import 'package:nkn_sdk/const/statusCode.dart';
import 'package:nkn_sdk/crypto/encryption.dart';
import 'package:nkn_sdk/crypto/key.dart';
import 'package:nkn_sdk/network/rpcApi.dart';
import 'package:nkn_sdk/pb/clientmessage.pb.dart';
import 'package:nkn_sdk/pb/payloads.pb.dart';
import 'package:nkn_sdk/protocol/protocol.dart';
import 'package:nkn_sdk/tweetnacl/tweetnaclfast.dart';
import 'package:nkn_sdk/utils/ed2curve.dart';
import 'package:nkn_sdk/utils/utils.dart';

class WsApi {
  WebSocket _ws;
  List<String> _seedRpcServer;
  bool _encrypt;
  int _msgHoldingSeconds;
  int _reconnectInterval;
  int _reconnectIntervalMin;
  int _reconnectIntervalMax;
  int _responseTimeout;
  Key _key;
  Uint8List _curveSecretKey;
  String _identifier;
  String _addr;
  String _sigChainBlockHash;
  bool _shouldReconnect;
  Map<String, Object> _node;
  var _onConnect;
  var _onMessage;
  var _onClose;
  var _onError;
  var _onBlock;
  WsApi(String seed, String identifier, {seedRpcServer, bool encrypt, int msgHoldingSeconds, int reconnectIntervalMin, int reconnectIntervalMax, int responseTimeout}) {
    _seedRpcServer = new List<String>();
    if (seedRpcServer is String) {
      _seedRpcServer.add(seedRpcServer);
    } else if (seedRpcServer is List<String>) {
      _seedRpcServer.addAll(seedRpcServer);
    } else {
      _seedRpcServer.addAll(seeds);
    }
    _encrypt = encrypt ?? configure['ENCRYPT'];
    _msgHoldingSeconds = msgHoldingSeconds ?? configure['MSG_HOLDING_SECONDS'];
    _reconnectIntervalMin = reconnectIntervalMin ?? configure['RECONNECT_INTERVAL_MIN'];
    _reconnectIntervalMax = reconnectIntervalMax ?? configure['RECONNECT_INTERVAL_MAX'];
    _reconnectInterval = _reconnectIntervalMin;
    _responseTimeout = responseTimeout ?? configure['RESPONSE_TIMEOUT'];
    _key = new Key(seed);
    _curveSecretKey = convertSecretKey(_key.privateKey);
    _identifier = identifier ?? '';
    _addr = (identifier?.isNotEmpty ?? false ? identifier + '.' : '') + _key.publicKeyHash;
    _shouldReconnect = false;
  }

  String get addr {
    return _addr;
  }

  String get identifier {
    return _identifier;
  }

  set onConnect(f) {
    _onConnect = f;
  }

  set onMessage(Future<dynamic> f(String src, data, type, encrypted, pid)) {
    _onMessage = f;
  }

  set onClose(f) {
    _onClose = f;
  }

  set onError(f(e)) {
    _onError = f;
  }

  set onBlock(f) {
    _onBlock = f;
  }

  handleInboundMsg(raw) async {
    InboundMessage msg = InboundMessage.fromBuffer(raw);
    if (msg.prevSignature.length > 0) {
      var receipt = newReceipt(msg.prevSignature, _key);
      _ws.add(receipt.writeToBuffer());
    }

    Message pldMsg = Message.fromBuffer(msg.payload);
    var rawPayload = pldMsg.payload;
    if (pldMsg.encrypted) {
      var sharedKey = computeSharedKey(_curveSecretKey, convertPublicKey(getPublicKeyByClientAddr(msg.src)));

      rawPayload = decrypt(pldMsg.payload, pldMsg.nonce, sharedKey);
      if (rawPayload == null) {
        throw "Decrypt message failed.";
      }
    }

    Payload payload = Payload.fromBuffer(rawPayload);
    var data;
    switch (payload.type) {
      case PayloadType.TEXT:
        TextData textData = TextData.fromBuffer(payload.data);
        data = textData.text;
        break;
      case PayloadType.ACK:
        data = null;
        break;
    }

    switch (payload.type) {
      case PayloadType.TEXT:
      case PayloadType.BINARY:
        var response;
        if (_onMessage != null) {
          response = await _onMessage(msg.src, data, payload.type, pldMsg.encrypted, payload.pid);
        }

        if (response == false) {
          return true;
        } else if (response != null && response != true) {
          this.send(
            msg.src,
            response,
            encrypt: pldMsg.encrypted,
            msgHoldingSeconds: 0,
            replyToPid: payload.pid,
            noReply: true,
          );
        } else {
          this.sendACK(msg.src, payload.pid, pldMsg.encrypted);
        }

        return true;
    }
    return false;
  }

  handleConnect(addr) async {
    _ws = await WebSocket.connect(addr);
    _ws.pingInterval = const Duration(seconds: 10);
    _ws.timeout(const Duration(seconds: 30));
    _shouldReconnect = true;
    _reconnectInterval = _reconnectIntervalMin;
  }

  handleBinaryMessage(List<int> raw) async {
    ClientMessage clientMessage = ClientMessage.fromBuffer(raw);
    switch (clientMessage.messageType) {
      case ClientMessageType.INBOUND_MESSAGE:
        return await handleInboundMsg(clientMessage.message);
      default:
        return false;
    }
  }

  handleMessage(data) async {
    if (data is List<int>) {
      print('received binary message');
      try {
        var handled = await this.handleBinaryMessage(data);
        if (!handled) {
          print('Unhandled msg.');
        }
      } catch (e) {
        print(e);
      }
      return;
    }

    var msg = jsonDecode(data);

    if (msg['Error'] != null && msg['Error'] != StatusCode.SUCCESS) {
      if (msg['Error'] == StatusCode.WRONG_NODE) {
        this.createWebSocketConnection(msg['Result']);
      } else if (msg['Action'] == 'setClient') {
        _ws.close();
      }
      return;
    }

    switch (msg['Action']) {
      case 'setClient':
        _sigChainBlockHash = msg['Result']['sigChainBlockHash'];
        if (_onConnect != null) _onConnect();
        break;
      case 'updateSigChainBlockHash':
        _sigChainBlockHash = msg['Result'];
        break;
      case 'sendRawBlock':
        if (_onBlock != null) _onBlock();
        break;
      default:
        print('Unknown msg type: ' + msg['Action']);
    }
  }

  createWebSocketConnection(node) async {
    if (node['addr'] == null) {
      print('No address in node info' + node);
      this.reconnect();
      return;
    }
    await this.handleConnect('ws://' + node['addr']);
    _node = node;
    print('set client $addr');
    _ws.add(jsonEncode({'Action': 'setClient', 'Addr': _addr}));
    _ws.listen(handleMessage, onDone: () {
      this.reconnect();
    }, onError: (e) {
      this.reconnect();
      if (_onError is Function) _onError(e);
    });
  }

  connect() async {
    Random random = Random();
    var rpcAddr = _seedRpcServer[random.nextInt(_seedRpcServer.length)];

    RpcApi rpc = RpcApi(rpcAddr: rpcAddr);
    try {
      var nodeInfo = await rpc.getWsAddr(_addr);
      print('getWsAddr $nodeInfo');
      await this.createWebSocketConnection(nodeInfo);
    } catch (e) {
      print('RPC call failed, $e');
      this.reconnect();
    }
  }

  reconnect() async {
    if (_shouldReconnect) {
      print('Reconnecting in ' + (_reconnectInterval / 1000).toString() + 's...');
      var timer = Timer(Duration(milliseconds: _reconnectInterval), this.connect);
      _reconnectInterval *= 2;
      if (_reconnectInterval > _reconnectIntervalMax) {
        _reconnectInterval = _reconnectIntervalMax;
      }
    } else {
      if (_onClose is Function) _onClose();
    }
  }

  close() async {
    _shouldReconnect = false;
    _ws.close();
    if (_onClose is Function) _onClose();
  }

  messageFromPayload(Payload payload, isEncrypt, dest) {
    if (isEncrypt) {
      if (dest is List) {
        throw "Encryption with multicast is not supported yet";
      }
      var nonce = randomByte(Box.nonceLength);
      var sharedKey = computeSharedKey(_curveSecretKey, convertPublicKey(getPublicKeyByClientAddr(dest)));
      var encrypted = encrypt(payload.writeToBuffer(), nonce, sharedKey);

      return newMessage(encrypted, true, nonce);
    } else {
      return newMessage(payload.writeToBuffer(), false);
    }
  }

  sendACK(dest, pid, encrypt) async {
    if (dest is List) {
      if (dest.length == 0) {
        return;
      }
      if (dest.length == 1) {
        this.sendACK(dest[0], pid, encrypt);
      }
      if (dest.length > 1 && encrypt) {
        print("Encryption with multicast is not supported yet, fall back to unicast for ACK");
        for (var i = 0; i < dest.length; i++) {
          this.sendACK(dest[i], pid, encrypt);
        }
        return;
      }
    }

    Payload payload = newAckPayload(pid, null);

    Message pldMsg = messageFromPayload(payload, encrypt, dest);
    OutboundMessage obMsg = newOutboundMessage(dest, pldMsg.writeToBuffer(), 0, _addr, _key, _node['pubkey'], sigChainBlockHash: _sigChainBlockHash);
    ClientMessage msg = newClientMessage(ClientMessageType.OUTBOUND_MESSAGE, obMsg.writeToBuffer());
    _ws.add(msg.writeToBuffer());
  }

  sendMsg(dest, data, encrypt, maxHoldingSeconds, replyToPid, msgPid) async {
    if (dest is List) {
      if (dest.length == 0) {
        return null;
      }
      if (dest.length == 1) {
        return sendMsg(dest[0], data, encrypt, maxHoldingSeconds, replyToPid, msgPid);
      }
      if (dest.length > 1 && encrypt) {
        print("Encryption with multicast is not supported yet, fall back to unicast and will not return msg pid");
        for (var i = 0; i < dest.length; i++) {
          sendMsg(dest[i], data, encrypt, maxHoldingSeconds, replyToPid, msgPid);
        }
        return null;
      }
    }

    Payload payload;
    if (data is String) {
      payload = newTextPayload(data, replyToPid, msgPid);
    } else {
      payload = newBinaryPayload(data, replyToPid, msgPid);
    }

    Message pldMsg = messageFromPayload(payload, encrypt, dest);

    OutboundMessage obMsg = newOutboundMessage(dest, pldMsg.writeToBuffer(), maxHoldingSeconds, _addr, _key, _node['pubkey'], sigChainBlockHash: _sigChainBlockHash);
    ClientMessage client = newClientMessage(ClientMessageType.OUTBOUND_MESSAGE, obMsg.writeToBuffer());
    _ws.add(client.writeToBuffer());

    return payload.pid;
  }

  send(dest, data, {pid, replyToPid, noReply: false, encrypt, msgHoldingSeconds}) async {
    await sendMsg(dest, data, encrypt ?? _encrypt, msgHoldingSeconds ?? _msgHoldingSeconds, replyToPid, pid);
    if (pid == null || noReply) {
      return null;
    }
  }
}
