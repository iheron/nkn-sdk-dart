import 'dart:convert';
import 'dart:io';


import 'package:nkn_sdk/network/wsApi.dart';
import 'package:nkn_sdk/wallet.dart';

void main() async {
  WsApi api = new WsApi('a516443812f913b1d3f90bdb89a8fc393ff158fd2e7a3382d3f7a3991cb73fed', 'dartsdk');
  print(api.addr);
  api.onConnect = () {
    print('--------------connect-------------');
  };
  api.onMessage = (src, data, type, encrypted, pid) async {
    var json = jsonDecode(data);
    print(json['content']);
    return '✔';
  };
  api.onError = (e) {
    print('----------err----- $e');
  };
  api.onClose = () {
    print('--------close--------');
  };
  await api.connect();
  api.send('heron.25ac590eaca614a0ba4c4387d8514a0b54e948d120c6ff49564e7830c9dec929', '{"contentType":"text","isPrivate":true,"content":"hello"}');
  print('------------send-------------');

  WsApi api2 = new WsApi('2bc5501d131696429264eb7286c44a29dd44dd66834d9471bd8b0eb875a1edb0', 'test');
  print(api2.addr);
  api2.onConnect = () {
    print('-------------2-connect-------------');
  };
  api2.onMessage = (src, data, type, encrypted, pid) async {
    print('--------client2 onmessage---------');
    var json = jsonDecode(data);
    print(json['content']);
    return '✔';
  };
  api2.onError = (e) {
    print('--------2--err----- $e');
  };
  api2.onClose = () {
    print('------2--close--------');
  };
  await api2.connect();
  api.send('test.8488c5ee3010ec45989ffcbf5c74283e23d0f18c4f8e9ea2f6adb1a942dc8d74', '{"contentType":"text","isPrivate":true,"content":"hello"}');
  print('----------send---------');
}