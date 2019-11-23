import 'package:flutter_test/flutter_test.dart';
import 'package:nkn_sdk/network/wsApi.dart';

void main() {
  test('connection', () async {
    WsApi api = new WsApi('a516443812f913b1d3f90bdb89a8fc393ff158fd2e7a3382d3f7a3991cb73fed','dartsdk');
    await api.connect();
  });
}
