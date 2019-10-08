import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'package:nkn_sdk/wallet.dart';

void main() {
  test('create random wallet', () {
    final wallet = Wallet.createRandom('pswd');

    expect(wallet.seed + wallet.publicKey, wallet.privateKey);
  });

  test('wallet to keystore', () {
    final wallet = Wallet.fromSeed(
        'a516443812f913b1d3f90bdb89a8fc393ff158fd2e7a3382d3f7a3991cb73fed',
        '123456');
    var keystore = wallet.encrypt();
    var json = jsonDecode(keystore);

    expect(json['PasswordHash'],
        '7cbfc5a7f08fe352f36e134628c6f1abde36a9346f0b3d207e335d688a9c123a');
    expect(json['Address'], 'NKNQXSBMkSymuKasyJCE5HaiUSfsfe8JqKqM');
    expect(json['ProgramHash'], '8f0a7775bb83b13afdd61a1d5ec2d1a148cfd5f3');
    expect(json['ContractData'],
        '2220f11d08df818997a84dd9227ff6ec0ec87f3a1bd26e368fadbe187020a336fe18ac01008f0a7775bb83b13afdd61a1d5ec2d1a148cfd5f3');
  });

  test('wallet reset password and to keystore', () {
    final wallet = Wallet.fromSeed(
        'a516443812f913b1d3f90bdb89a8fc393ff158fd2e7a3382d3f7a3991cb73fed',
        '123456');
    var keystore = wallet.encrypt('new-password');
    var json = jsonDecode(keystore);
    expect(json['PasswordHash'],
        '83010644f28334a6e30c364936c319c824bda73dd62880acaf59494ebaae7be7');
    expect(json['Address'], 'NKNQXSBMkSymuKasyJCE5HaiUSfsfe8JqKqM');
    expect(json['ProgramHash'], '8f0a7775bb83b13afdd61a1d5ec2d1a148cfd5f3');
    expect(json['ContractData'],
        '2220f11d08df818997a84dd9227ff6ec0ec87f3a1bd26e368fadbe187020a336fe18ac01008f0a7775bb83b13afdd61a1d5ec2d1a148cfd5f3');
  });

  test('get balance', () async {
    final wallet = Wallet.fromSeed(
        'a516443812f913b1d3f90bdb89a8fc393ff158fd2e7a3382d3f7a3991cb73fed',
        '123456');
    var balance = await wallet.getBalance();
    expect(balance >= 0, true);
  });

  test('get balance by address', () async {
    var balance = await Wallet.getBalanceByAddress(
        'NKNVCZYpUk94xe3p3miNGSoQnkidQUfPMQxx');
    expect(balance >= 0, true);
  });

  test('get nonce', () async {
    final wallet = Wallet.fromSeed(
        'a516443812f913b1d3f90bdb89a8fc393ff158fd2e7a3382d3f7a3991cb73fed',
        '123456');
    var nonce = await wallet.getNonce();
    expect(nonce >= 0, true);
  });

  test('get nonce by address', () async {
    var nonce =
        await Wallet.getNonceByAddress('NKNVCZYpUk94xe3p3miNGSoQnkidQUfPMQxx');
    expect(nonce >= 0, true);
  });

  test('restore fromKeystore', () async {
    Wallet wallet = Wallet.createRandom();

    Wallet newWallet = Wallet.fromKeystore(wallet.encrypt(), '');
    expect(wallet.address, newWallet.address);
    expect(wallet.seed, newWallet.seed);
    expect(wallet.publicKey, newWallet.publicKey);
    expect(wallet.privateKey, newWallet.privateKey);
  });

  test('transfer', () async {
    Wallet wallet = Wallet.createRandom();

    try {
      var res =
          await wallet.transferTo(Wallet.createRandom().address, 0.00000001);
      print(res);
    } catch (e) {
      print(e.message);
    }
  });

  test('subscribe', () async {
    Wallet wallet = Wallet.createRandom();

    var res = await wallet.subscribe('test', 10, identifier: 'id');
    print(res);
  });

  test('unsubscribe', () async {
    Wallet wallet = Wallet.createRandom();

    var res = await wallet.unsubscribe('test', identifier: 'id');
    print(res);
  });
}
