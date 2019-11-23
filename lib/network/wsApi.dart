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
  Function _onConnect;
  Function _onMessage;
  Function _onClose;
  Function _onError;
  Function _onBlock;
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
    _addr = (identifier != null ? identifier + '.' : '') + _key.publicKey;
    _shouldReconnect = false;
  }

  String get addr {
    return _addr;
  }

  set onConnect(Function f) {
    _onConnect = f;
  }

  set onMessage(Function f) {
    _onMessage = f;
  }

  set onClose(Function f) {
    _onClose = f;
  }

  set onError(Function f) {
    _onError = f;
  }

  set onBlock(Function f) {
    _onBlock = f;
  }

  handleInboundMsg(raw) {
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
        if (_onMessage != null) _onMessage(data);
        break;
    }
  }

  handleConnect(addr) async {
    _ws = await WebSocket.connect(addr);
    _shouldReconnect = true;
    _reconnectInterval = _reconnectIntervalMin;
  }

  handleBinaryMessage(List<int> raw) {
    ClientMessage clientMessage = ClientMessage.fromBuffer(raw);
    switch (clientMessage.messageType) {
      case ClientMessageType.INBOUND_MESSAGE:
        return handleInboundMsg(clientMessage.message);
      default:
        return false;
    }
  }

  handleMessage(data) {
    if (data is List<int>) {
      print('received binary message');
      this.handleBinaryMessage(data);
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
        if (_onBlock != null) _onBlock;
        break;
      default:
        print('Unknown msg type: ' + msg['Action']);
    }
  }

  createWebSocketConnection(node) async {
    if (node['addr'] == null) {
      print('No address in node info' + node);
      if (_shouldReconnect) {
        this.reconnect();
      }
      return;
    }
    await this.handleConnect('ws://' + node['addr']);
    _ws.add(jsonEncode({'Action': 'setClient', 'Addr': _addr}));
    _ws.listen(
      handleMessage,
      onDone: _onClose,
      onError: _onError
    );
  }

  connect() async {
    Random random = new Random();
    var rpcAddr = _seedRpcServer[random.nextInt(_seedRpcServer.length)];

    RpcApi rpc = new RpcApi(rpcAddr: rpcAddr);
    try {
      var nodeInfo = await rpc.getWsAddr(_addr);

      await this.createWebSocketConnection(nodeInfo);
    } catch (e) {
      print('RPC call failed, $e');
      if (_shouldReconnect) {
        this.reconnect();
      }
    }
  }

  reconnect() async {
    print('Reconnecting in ' + (_reconnectInterval / 1000).toString() + 's...');
  }


}

void main() async {
  print('-----------------');
  WsApi api = new WsApi('a516443812f913b1d3f90bdb89a8fc393ff158fd2e7a3382d3f7a3991cb73fed', 'dartsdk');
  print(api._addr);
  api.onConnect = () {
    print('--------------connect-------------');
  };
  api.onMessage = (data) {
    print('--------------on data------------- $data');
    var json = jsonDecode(data);
    print(json['content']);
  };
  api.onError = (e) {
    print('----------err----- $e');
  };
  api.onClose = () {
    print('--------close--------');
  };
  await api.connect();
}
