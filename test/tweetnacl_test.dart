import 'dart:math';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:nkn_sdk/tweetnacl/signature.dart';
import 'package:nkn_sdk/tweetnacl/tools.dart';
import 'package:nkn_sdk/tweetnacl/keypair.dart';

void main() {
  test('create random key', () {
    Uint8List seedByte = randomByte();

    KeyPair key = Signature.keyPair_fromSeed(seedByte);

    expect(hexEncodeToString(seedByte) + hexEncodeToString(key.publicKey),
        hexEncodeToString(key.secretKey));
  });

  test('restore key by seed', () {
    var seed =
        'a2df9fafa747b4da6afa58cdee8e170f0a71815584c3ed3bfa52040c89d0bd61';
    KeyPair key = Signature.keyPair_fromSeed(hexDecode(seed));
    expect(hexEncodeToString(key.publicKey),
        'd839c6e5cd3d7af2535fbff3a12d430e6d77bbdc076ccdd457c3d4c4f608082d');
    expect(hexEncodeToString(key.secretKey),
        'a2df9fafa747b4da6afa58cdee8e170f0a71815584c3ed3bfa52040c89d0bd61d839c6e5cd3d7af2535fbff3a12d430e6d77bbdc076ccdd457c3d4c4f608082d');
  });


}
