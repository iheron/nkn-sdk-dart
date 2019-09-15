library wallet;

import 'dart:convert';
import 'dart:typed_data';

import 'package:nkn_sdk/crypto/hash.dart';

import 'crypto/account.dart';
import 'crypto/encryption.dart';
import 'utils.dart';

class Wallet {
  static final int WALLET_VERSION = 1;
  static final int MIN_COMPATIBLE_WALLET_VERSION = 1;
  static final int MAX_COMPATIBLE_WALLET_VERSION = 1;

  Uint8List _passwordHash;
  Uint8List _iv;
  Uint8List _masterKey;
  Uint8List _seedEncrypted;
  String _version;

  Account _account;

  Wallet(Account account) {
    this._account = account;
  }

  Wallet.createRandom([pass = '']) {
    Account account = Account();
    this._account = account;
    genWallet(account, password: pass);
  }

  Wallet.fromSeed(String seed) {
    Account account = Account(seed);
    this._account = account;
    Wallet(account);
  }

  String get address {
    return this._account.address;
  }

  String get seed {
    return this._account.seed;
  }

  String get privateKey {
    return this._account.privateKey;
  }

  String get publicKey {
    return this._account.publicKey;
  }

  String get programHash {
    return this._account.programHash;
  }

  String get signatureRedeem {
    return this._account.signatureRedeem;
  }

  String get contractData {
    return this._account.contract;
  }

  String get passwrodHash {
    return hexEncode(this._passwordHash);
  }

  String get version {
    return this._version;
  }

  String get masterKey {
    return hexEncode(this._masterKey);
  }

  String get seedEncrypted {
    return hexEncode(this._seedEncrypted);
  }

  bool verifyPassword(pass) {
    var passwordHash = Wallet.passwordHash(pass);
    return hexEncode(this._passwordHash) == hexEncode(sha256Hex(passwordHash));
  }

  static Uint8List passwordHash(pass) {
    return doubleSha256(pass);
  }

  genWallet(Account account,
      {String password = '', String prevMasterKey, String prevIV}) {
    Wallet(account);

    var masterKey =
        prevMasterKey != null ? hexDecode(prevMasterKey) : genAESPassword();
    this._passwordHash = Wallet.passwordHash(password);
    this._iv = prevIV != null ? hexDecode(prevIV) : genAESIV();
    this._masterKey =
        encrypt(masterKey, this._passwordHash, this._iv);
    this._seedEncrypted = encrypt(hexDecode(seed), masterKey, this._iv);
    this._version = Wallet.WALLET_VERSION.toString();
  }
}
