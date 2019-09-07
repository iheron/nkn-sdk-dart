import 'dart:typed_data';

import 'package:nkn_sdk/crypto/key.dart';
import 'package:nkn_sdk/tweetnacl/signature.dart';
import 'package:nkn_sdk/utils.dart';

class Account {
  Key _key;
  Uint8List _publicKey;
  Uint8List _privateKey;
  Uint8List _seed;
  String _address;
  String programHash;

  Account(seed) {
    Key(seed);
  }

  String get seed {
    return hexEncode(this._seed);
  }

  String get privateKey {
    return hexEncode(this._privateKey);
  }

  String get publicKey {
    return hexEncode(this._publicKey);
  }
}
