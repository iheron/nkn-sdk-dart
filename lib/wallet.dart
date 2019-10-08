library wallet;

import 'dart:convert';
import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:nkn_sdk/crypto/hash.dart';
import 'package:nkn_sdk/errors/walletError.dart';
import 'package:nkn_sdk/pb/transaction.pb.dart';
import 'package:nkn_sdk/transaction/payload.dart';
import 'package:nkn_sdk/transaction/transaction.dart';

import 'crypto/account.dart';
import 'crypto/encryption.dart' as encryption;
import 'network/api.dart';
import 'utils.dart';

Api api = Api();

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

  Wallet.fromKeystore(String keystore, String pass) {
    var walletJson = jsonDecode(keystore);
    var version = walletJson['Version'];
    if (!(version is num) ||
        version < MIN_COMPATIBLE_WALLET_VERSION ||
        version > MAX_COMPATIBLE_WALLET_VERSION) {
      throw WalletError(WalletErrorCode.INVALID_WALLET_VERSION,
          WalletErrorMsg.INVALID_WALLET_VERSION);
    }

    var masterKey = walletJson['MasterKey'];
    var iv = walletJson['IV'];
    var seedEncrypted = walletJson['SeedEncrypted'];
    var address = walletJson['Address'];
    if (!(masterKey is String) ||
        !(iv is String) ||
        !(seedEncrypted is String) ||
        !(address is String)) {
      throw WalletError(WalletErrorCode.INVALID_WALLET_FORMAT,
          WalletErrorMsg.INVALID_WALLET_FORMAT);
    }
    var pwdHash = createPasswordHash(pass);
    if (walletJson['PasswordHash'] != hexEncode(sha256Hex(pwdHash))) {
      throw WalletError(
          WalletErrorCode.WRONG_PASSWORD, WalletErrorMsg.WRONG_PASSWORD);
    }
    var decryptMasterKey =
        encryption.decrypt(hexDecode(masterKey), pwdHash, hexDecode(iv));
    var seed = encryption.decrypt(
        hexDecode(seedEncrypted), decryptMasterKey, hexDecode(iv));

    genWallet(Account(seed),
        password: pass, prevMasterKey: hexEncode(decryptMasterKey), prevIV: iv);
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

  getBalance() async {
    var res = await api.getBalanceByAddr(this.address);
    return double.parse(res['amount']);
  }

  static getBalanceByAddress(address) async {
    var res = await api.getBalanceByAddr(address);
    return double.parse(res['amount']);
  }

  getNonce() async {
    var res = await api.getNonceByAddr(this.address);
    return res['nonce'] ?? 0;
  }

  static getNonceByAddress(address) async {
    var res = await api.getNonceByAddr(address);
    return res['nonce'] ?? 0;
  }

  transferTo(String toAddress, double amount,
      {Int64 fee, int nonce, String attrs = ''}) async {
    if (!verifyAddress(toAddress)) {
      throw WalletError(
          WalletErrorCode.INVALID_ADDRESS, WalletErrorMsg.INVALID_ADDRESS);
    }
    double balance = await this.getBalance();
    if (balance < amount) {
      throw WalletError(WalletErrorCode.NOT_ENOUGH_BALANCE,
          WalletErrorMsg.NOT_ENOUGH_BALANCE);
    }

    nonce = nonce ?? await this.getNonce();

    var pld = newTransfer(
      this.programHash,
      addressStringToProgramHash(toAddress),
      amount,
    );

    Transaction txn =
        newTransaction(this._account, pld, nonce, fee: fee, attrs: attrs);
    var res = await api.sendRawTransaction(hexEncode(txn.writeToBuffer()));
    return res;
  }

  subscribe(String topic, int duration,
      {String identifier = '', String meta = '', options}) async {
    var nonce = options?.nonce ?? await this.getNonce();
    var pld = newSubscribe(this.publicKey, identifier, topic, duration, meta);
    Transaction txn = newTransaction(this._account, pld, nonce,
        fee: options?.fee ?? Int64(0), attrs: options?.attrs ?? '');
    var res = await api.sendRawTransaction(hexEncode(txn.writeToBuffer()));
    return res;
  }

  unsubscribe(String topic,
      {String identifier = '', options}) async {
    var nonce = options?.nonce ?? await this.getNonce();
    var pld = newUnsubscribe(this.publicKey, identifier, topic);
    Transaction txn = newTransaction(this._account, pld, nonce,
        fee: options?.fee ?? Int64(0), attrs: options?.attrs ?? '');
    var res = await api.sendRawTransaction(hexEncode(txn.writeToBuffer()));
    return res;
  }
}
