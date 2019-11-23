import 'dart:typed_data';

import 'package:nkn_sdk/crypto/hash.dart';
import 'package:nkn_sdk/tweetnacl/keypair.dart';
import 'package:nkn_sdk/tweetnacl/signature.dart';
import 'package:nkn_sdk/utils/utils.dart';

class Key {
  KeyPair _key;
  Uint8List _publicKey;
  Uint8List _privateKey;
  Uint8List _seed;
  String signatureRedeem;
  String programHash;
  Signature _signature;

  Key(seed) {
    Uint8List seedByte;
    if (seed is Uint8List) {
      seedByte = seed;
      this._key = Signature.keyPair_fromSeed(seed);
    } else if (seed is String) {
      seedByte = hexDecode(seed);
      this._key = Signature.keyPair_fromSeed(seedByte);
    } else {
      seedByte = randomByte();
      this._key = Signature.keyPair_fromSeed(seedByte);
    }
    this._publicKey = _key.publicKey;
    this._privateKey = _key.secretKey;
    this._seed = seedByte;
    this.signatureRedeem = publicKeyToSignatureRedeem(hexEncode(_key.publicKey));
    this.programHash = hexStringToProgramHash(this.signatureRedeem);
    this._signature = Signature(this._key.publicKey, this._key.secretKey);
  }

  String get seed {
    return hexEncode(this._seed);
  }

  Uint8List get privateKey {
    return this._privateKey;
  }

  String get privateKeyHash {
    return hexEncode(this._privateKey);
  }

  String get publicKey {
    return hexEncode(this._publicKey);
  }

  Uint8List sign(Uint8List message) {
    return _signature.detached(message);
  }
}
