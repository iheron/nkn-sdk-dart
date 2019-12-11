import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';

import 'package:nkn_sdk/crypto/key.dart';
import 'package:nkn_sdk/utils/utils.dart';

void main() {
  test('create random key', () {
    Uint8List seedByte = randomBytes();
    final key = Key(seedByte);
    expect(key.seed + key.publicKeyHash, key.privateKeyHash);
  });

  test('create key', () {
    final key = Key('6771a9c86edd8ea22e491ce06212f6eb273adb73f205fd050b5c539bd87a9d54');
    expect(key.publicKeyHash, 'cb70cd4da987d635168d9c4da0836f45ba8c3377112f51a9f68bc21f1ab1fb9b');
    expect(key.privateKeyHash, '6771a9c86edd8ea22e491ce06212f6eb273adb73f205fd050b5c539bd87a9d54cb70cd4da987d635168d9c4da0836f45ba8c3377112f51a9f68bc21f1ab1fb9b');
    expect(key.seed, '6771a9c86edd8ea22e491ce06212f6eb273adb73f205fd050b5c539bd87a9d54');
    expect(key.signatureRedeem, '20cb70cd4da987d635168d9c4da0836f45ba8c3377112f51a9f68bc21f1ab1fb9bac');
    expect(key.programHash, '57ab409d54c40c5aba1a3656ff2ecf16f1416500');
  });
}
