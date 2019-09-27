library wallet;

import 'dart:convert';
import 'dart:typed_data';

import 'package:nkn_sdk/crypto/hash.dart';

import 'crypto/account.dart';
import 'crypto/encryption.dart' as encryption;
import 'utils.dart';

class Wallet {
  static final int WALLET_VERSION = 1;
  static final int MIN_COMPATIBLE_WALLET_VERSION = 1;
  static final int MAX_COMPATIBLE_WALLET_VERSION = 1;

  Uint8List _passwordHash;
  Uint8List _iv;
  Uint8List _masterKey;
  Uint8List _seedEncrypted;
  int _version;

  Account _account;

  Wallet.createRandom([pass = '']) {
    Account account = Account();
    genWallet(account, password: pass);
  }

  Wallet.fromSeed(String seed, [String pass = '']) {
    Account account = Account(seed);
    genWallet(account, password: pass);
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

  String get passwordHash {
    return hexEncode(this._passwordHash);
  }

  int get version {
    return this._version;
  }

  String get masterKey {
    return hexEncode(this._masterKey);
  }

  String get seedEncrypted {
    return hexEncode(this._seedEncrypted);
  }

  bool verifyPassword(pass) {
    var passwordHash = Wallet.createPasswordHash(pass);
    return hexEncode(this._passwordHash) == hexEncode(sha256Hex(passwordHash));
  }

  static Uint8List createPasswordHash(pass) {
    return doubleSha256(pass);
  }

  genWallet(Account account,
      {String password = '', String prevMasterKey, String prevIV}) {
    this._account = account;

    var masterKey = prevMasterKey != null
        ? hexDecode(prevMasterKey)
        : encryption.genAESPassword();

    var pwdHash = createPasswordHash(password);
    this._passwordHash = sha256Hex(pwdHash);
    this._iv = prevIV != null ? hexDecode(prevIV) : encryption.genAESIV();
    this._masterKey = encryption.encrypt(masterKey, pwdHash, this._iv);
    this._seedEncrypted =
        encryption.encrypt(hexDecode(seed), masterKey, this._iv);
    this._version = Wallet.WALLET_VERSION;
  }

  encrypt([String pass]) {
    if (pass == null) {
      return jsonEncode({
        'Version': this._version,
        'PasswordHash': this.passwordHash,
        'MasterKey': this.masterKey,
        'IV': hexEncode(this._iv),
        'SeedEncrypted': this.seedEncrypted,
        'Address': this.address,
        'ProgramHash': this.programHash,
        'ContractData': this.contractData,
      });
    } else {
      var wallet = Wallet.fromSeed(this.seed, pass);
      return wallet.encrypt();
    }
  }
}
