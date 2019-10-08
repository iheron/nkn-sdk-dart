import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'package:nkn_sdk/network/api.dart';

void main() {
  test('query balance', () async {
    var api = Api();
    var res =
        await api.getBalanceByAddr('NKNVCZYpUk94xe3p3miNGSoQnkidQUfPMQxx');

    expect(double.parse(res['amount']) is double, true);
  });

  test('query nonce', () async {
    var api = Api();
    var res = await api.getNonceByAddr('NKNVCZYpUk94xe3p3miNGSoQnkidQUfPMQxx');

    expect(res['nonce'] >= 0, true);
    expect(res['nonceInTxPool'] >= 0, true);
  });


}
