import 'dart:convert';
import 'dart:math';
import 'package:nkn_sdk/configure/configure.dart';
import 'package:http/http.dart' as http;

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
    var url = this._configure['RPC_ADDR'];
    Map<String, Object> data = Map<String, Object>.from(this._params);
    data.addAll({
      'method': method,
      'params': params
    });

    var res = await http.post(url, body: jsonEncode(data));

    if (res.statusCode != 200) {
      return null;
    }

    Map json = jsonDecode(res.body);

    if(json.containsKey('error')){
      return json['error'];
    }
    return json['result'];
  }

  getBalanceByAddr(address) async {
    return await this.request('getbalancebyaddr', {'address': address});
  }
}
