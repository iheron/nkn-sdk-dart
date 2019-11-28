import 'dart:convert';

import 'package:nkn_sdk/client.dart';

void main() async {
  Client client = Client('a516443812f913b1d3f90bdb89a8fc393ff158fd2e7a3382d3f7a3991cb73fed', 'dartsdk');
  print(client.addr);

  client.onMessage = (src, data, type, encrypted, pid) async {
    print('---------on message------------');
  };
  await client.connect();

  Client client2 = new Client('2bc5501d131696429264eb7286c44a29dd44dd66834d9471bd8b0eb875a1edb0', 'test');
  print(client2.addr);

  client2.onMessage = (src, data, type, encrypted, pid) async {
    print('--------client2 onmessage---------');
    var json = jsonDecode(data);
    print(json['content']);
    
  };
  await client2.connect();
  client.send('test.8488c5ee3010ec45989ffcbf5c74283e23d0f18c4f8e9ea2f6adb1a942dc8d74', '{"contentType":"text","isPrivate":true,"content":"hello"}');
}