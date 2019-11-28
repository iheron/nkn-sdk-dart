library wallet;

import 'package:nkn_sdk/protocol/protocol.dart';
import 'package:nkn_sdk/store/memcache.dart';
import 'package:nkn_sdk/utils/utils.dart';

import 'network/wsApi.dart';

genIdentifier(String base, id) {
  if (id == null) {
    return base;
  }
  return '__' + id.toString() + '__' + (base?.isNotEmpty ?? false ? '.' + base : '');
}

removeIdentifierPrefix(String id) {
  return id.replaceFirst(new RegExp(r'^__\d+__.'), '');
}

class Client {
  MemCache _cache;
  List<WsApi> _clients = List<WsApi>();
  WsApi _defaultClient;
  var _onConnect;
  var _onMessage;
  var _onClose;
  var _onError;
  var _onBlock;
  Client(String seed, String identifier,
      {seedRpcServer,
      bool encrypt,
      int msgHoldingSeconds,
      int reconnectIntervalMin,
      int reconnectIntervalMax,
      int responseTimeout,
      numSubClients: 3,
      Duration msgCacheExpire: const Duration(seconds: 30)}) {
    _cache = MemCache(expire: msgCacheExpire);
    _defaultClient = WsApi(seed, identifier,
        seedRpcServer: seedRpcServer, encrypt: encrypt, msgHoldingSeconds: msgHoldingSeconds, reconnectIntervalMin: reconnectIntervalMax, responseTimeout: responseTimeout);
    _clients.add(_defaultClient);

    for (var i = 0; i < numSubClients; i++) {
      _clients.add(WsApi(seed, genIdentifier(identifier, i),
          seedRpcServer: seedRpcServer, encrypt: encrypt, msgHoldingSeconds: msgHoldingSeconds, reconnectIntervalMin: reconnectIntervalMax, responseTimeout: responseTimeout));
    }

    _clients.map((item) {
      item.onMessage = (src, data, type, encrypted, pid) async {
        if (_cache.get(hexEncode(pid)) != null) {
          return false;
        }
        _cache.set(hexEncode(pid), true);
        var srcId = removeIdentifierPrefix(src);
        var response;
        if (_onMessage != null) {
          response = await _onMessage(srcId, data, type, encrypted, pid);
        }

        return response;
      };
    }).toList();
  }

  get identifier {
    return _defaultClient.identifier;
  }

  get addr {
    return _defaultClient.addr;
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

  connect() async {
    await Future.wait(_clients.map((item) async => await item.connect()));
  }

  send(dest, data, {pid, replyToPid, noReply: false, encrypt, msgHoldingSeconds}) async {
    if (pid == null) pid = randomByte(PID_SIZE);
    Future.any(_clients.map((item) => item.send(dest, data, pid: pid, replyToPid: replyToPid, noReply: noReply, encrypt: encrypt, msgHoldingSeconds: msgHoldingSeconds)));
  }

  sendACK(dest, pid, encrypt) async {
    Future.any(_clients.map((item) => item.sendACK(dest, pid, encrypt)));
  }
}

void main() {}
