import 'package:nkn_sdk/crypto/key.dart';
import 'package:nkn_sdk/utils.dart';

class Account {
  Key _key;
  String _contract;
  String _address;

  Account([seed]) {
    this._key = Key(seed);
    this._address = programHashStringToAddress(this._key.programHash);
    this._contract = genAccountContractString(
        this._key.signatureRedeem, this._key.programHash);
  }

  Key get key {
    return this._key;
  }

  String get address {
    return this._address;
  }

  String get seed {
    return this._key.seed;
  }

  String get privateKey {
    return this._key.privateKey;
  }

  String get publicKey {
    return this._key.publicKey;
  }

  String get programHash {
    return this._key.programHash;
  }

  String get signatureRedeem {
    return this._key.signatureRedeem;
  }

  String get contract {
    return this._contract;
  }
}
