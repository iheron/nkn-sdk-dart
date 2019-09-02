import 'dart:typed_data';

import 'package:nkn_sdk/tweetnacl/keypair.dart';
import 'package:nkn_sdk/tweetnacl/signature.dart';
import 'package:nkn_sdk/tweetnacl/tools.dart';

import '../utils.dart';

class Key {
  KeyPair key;
  Uint8List publicKey;
  Uint8List privateKey;
  Uint8List seed;
  String signatureRedeem;

  Key(seed) {
    if (seed is String) {
      this.key = Signature.keyPair_fromSeed(hexDecode(seed));
    } else {
      Uint8List seedByte = randomByte();
      this.key = Signature.keyPair_fromSeed(seedByte);
    }
    this.publicKey = key.publicKey;
    this.privateKey = key.secretKey;
    this.seed = seed;
    this.signatureRedeem = Utils.publicKeyToSignatureRedeem(Utils.hexEncode(key.publicKey));
//    this.programHash =

  }

}
