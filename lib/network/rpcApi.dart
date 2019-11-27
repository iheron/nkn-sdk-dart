import 'dart:convert';
import 'package:nkn_sdk/configure/rpc.dart';
import 'package:http/http.dart' as http;
import 'package:nkn_sdk/errors/rpcError.dart';
import 'package:nkn_sdk/errors/walletError.dart';

class RpcApi {
  Map<String, Object> _params = {'jsonrpc': '2.0', 'id': 'nkn-sdk-dart'};
  String _rpcAddr;

  RpcApi({rpcAddr}) {
    if (rpcAddr == null) {
      this._rpcAddr = rpcConfigure['RPC_ADDR'];
    } else {
      this._rpcAddr = rpcAddr;
    }
  }

  request(method, params, [callId]) async {
    String url = this._rpcAddr;
    if (!url.isNotEmpty) {
      throw WalletError(WalletErrorCode.NO_RPC_SERVER, WalletErrorMsg.NO_RPC_SERVER);
    }
    Map<String, Object> data = Map<String, Object>.from(this._params);
    data.addAll({'method': method, 'params': params});

    var res = await http.post(url, body: jsonEncode(data));

    if (res.statusCode != 200) {
      throw RpcError();
    }

    Map json = jsonDecode(res.body);

    if (json.containsKey('error')) {
      return json['error'];
    }
    return json['result'];
  }

  getBalanceByAddr(address) async {
    return await this.request('getbalancebyaddr', {'address': address});
  }

  getNonceByAddr(address) async {
    return await this.request('getnoncebyaddr', {'address': address});
  }

  getBlockCount(name) async {
    return await this.request('getblockcount', {'name': name});
  }

  getAddressByName(name) async {
    return await this.request('getaddressbyname', {'name': name});
  }

  sendRawTransaction(tx) async {
    return await this.request('sendrawtransaction', {'tx': tx});
  }

  getWsAddr(address) async {
    return await this.request('getwsaddr', {'address': address});
  }

  getSubscribers(topic, {offset: 0, limit: 1000, meta: false, txPool: false}) async {
    return await this.request('getsubscribers', {'topic': topic, 'offset': offset, 'limit': limit, 'meta': meta, 'txPool': txPool});
  }

  getSubscribersCount(topic) async {
    return await this.request('getsubscriberscount', {'topic': topic});
  }

  getSubscription(topic, subscriber) async {
    return await this.request('getsubscription', {'topic': topic, 'subscriber': subscriber});
  }
}
