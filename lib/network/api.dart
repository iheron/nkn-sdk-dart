import 'dart:convert';
import 'package:nkn_sdk/configure/configure.dart';
import 'package:http/http.dart' as http;
import 'package:nkn_sdk/errors/walletError.dart';

class Api {
  Map<String, Object> _configure;
  Map<String, Object> _params = {'jsonrpc': '2.0', 'id': 'nkn-sdk-dart'};

  Api([newConfig]) {
    if (newConfig == null) {
      this._configure = configure;
    } else {
      this._configure = newConfig;
    }
  }

  request(method, params, [callId]) async {
    String url = this._configure['RPC_ADDR'];
    if (!url.isNotEmpty) {
      throw WalletError(
          WalletErrorCode.NO_RPC_SERVER, WalletErrorMsg.NO_RPC_SERVER);
    }
    Map<String, Object> data = Map<String, Object>.from(this._params);
    data.addAll({'method': method, 'params': params});

    var res = await http.post(url, body: jsonEncode(data));

    if (res.statusCode != 200) {
      throw 'response error';
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
}
