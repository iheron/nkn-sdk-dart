import 'dart:math';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:nkn_sdk/tweetnacl/signature.dart';
import 'package:nkn_sdk/tweetnacl/tools.dart';
import 'package:nkn_sdk/tweetnacl/keypair.dart';
import 'package:nkn_sdk/tweetnacl/tweetnaclfast.dart';
import 'package:nkn_sdk/utils/utils.dart' as utils;

void main() {
  test('create random key', () {
    Uint8List seedByte = randomByte();

    KeyPair key = Signature.keyPair_fromSeed(seedByte);

    expect(hexEncodeToString(seedByte) + hexEncodeToString(key.publicKey), hexEncodeToString(key.secretKey));
  });

  test('restore key by seed', () {
    var seed = 'a2df9fafa747b4da6afa58cdee8e170f0a71815584c3ed3bfa52040c89d0bd61';
    KeyPair key = Signature.keyPair_fromSeed(hexDecode(seed));
    expect(hexEncodeToString(key.publicKey), 'd839c6e5cd3d7af2535fbff3a12d430e6d77bbdc076ccdd457c3d4c4f608082d');
    expect(hexEncodeToString(key.secretKey), 'a2df9fafa747b4da6afa58cdee8e170f0a71815584c3ed3bfa52040c89d0bd61d839c6e5cd3d7af2535fbff3a12d430e6d77bbdc076ccdd457c3d4c4f608082d');
  });

  test('crypto open', () {
    Uint8List enMsg = utils.hexDecode("592c69baa96563ab82bdbe9fd5f539162a109b635ea4fd5a25bfc807760065417abb738d94e120f701ab05b8ccb982775989");
    Uint8List n = utils.hexDecode("47f2b9b6e8c31216366ca7934734031a5e8721282dc44cca");
    Uint8List k = utils.hexDecode("7572f366d6dba6a82a66a21bb6b530d1874dce615b6637037284b7e8324a7165");
    var res = SecretBox(k).open_nonce(enMsg, n);
    expect(utils.hexEncode(res), '08011208baf80460d4d946b21a140a1248656c6c6f20776f726c64212e2e2e2e2e2e');
  });

  test('crypto box', () {
    Uint8List msg = utils.hexDecode("08011208baf80460d4d946b21a140a1248656c6c6f20776f726c64212e2e2e2e2e2e");
    Uint8List n = utils.hexDecode("47f2b9b6e8c31216366ca7934734031a5e8721282dc44cca");
    Uint8List k = utils.hexDecode("7572f366d6dba6a82a66a21bb6b530d1874dce615b6637037284b7e8324a7165");
    var res = SecretBox(k).box_nonce(msg, n);
    expect(utils.hexEncode(res), '592c69baa96563ab82bdbe9fd5f539162a109b635ea4fd5a25bfc807760065417abb738d94e120f701ab05b8ccb982775989');
  });
}
