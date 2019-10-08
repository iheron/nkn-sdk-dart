import 'package:flutter_test/flutter_test.dart';
import 'package:nkn_sdk/crypto/encryption.dart';
import 'package:nkn_sdk/utils.dart';

void main() {
  test('encrypt', () {
    var encode = encrypt(
        hexDecode(
            'd6d4e00674b6ee0d19e41c42bf92f5e919b97f3e02f33e18acb699a101355174'),
        hexDecode(
            '0523d457e3ed9d803691f10c37a01361a8fb1a8392596ca059734d6cabe7dadc'),
        hexDecode('05f474918f8ea2dce1c94bfaae44fbbd'));
    expect(hexEncode(encode),
        '527cf7cda271b39cb86eaf56aa3689aeee28ee8c3b5289d576a340419ad6fdf0');
  });

  test('decrypt', () {
    var decode = decrypt(
        hexDecode(
            '527cf7cda271b39cb86eaf56aa3689aeee28ee8c3b5289d576a340419ad6fdf0'),
        hexDecode(
            '0523d457e3ed9d803691f10c37a01361a8fb1a8392596ca059734d6cabe7dadc'),
        hexDecode('05f474918f8ea2dce1c94bfaae44fbbd'));

    expect(hexEncode(decode),
        'd6d4e00674b6ee0d19e41c42bf92f5e919b97f3e02f33e18acb699a101355174');
  });
}
