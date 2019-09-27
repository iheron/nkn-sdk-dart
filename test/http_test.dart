import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'package:nkn_sdk/network/api.dart';

void main() {
  test('create random wallet', () async {
    var api = Api();
    var res = await api.getBalanceByAddr('NKNVCZYpUk94xe3p3miNGSoQnkidQUfPMQxx');
    print(res['amount']);
//    expect(wallet.seed + wallet.publicKey, wallet.privateKey);
  });

  
}
