import 'dart:math';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:nkn_sdk/crypto/account.dart';
import 'package:bs58check/bs58check.dart' as base58;
import 'package:nkn_sdk/crypto/key.dart';
import 'package:nkn_sdk/utils/utils.dart';

void main() {
  test('create account', () {
    final account = Account('fd3ab6cd15e9b4d31498cdf6f6985ff18f3b9c8dcb9f5b382b038a419886457d');
    expect(account.address, 'NKNZtYo7DtVGSQufgVcYcD44u4Fs2yKf91dF');
    expect(account.contract, '2220ad1587671f2bcd045e714909ba452f3ca77aa28c9fc04d3e1d4b2f3848e74ef7ac0100f5c1db61c1ecb85daa29609a8ca0f58696bf3916');

  });

}
