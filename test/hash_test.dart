import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nkn_sdk/crypto/hash.dart';
import 'package:nkn_sdk/tweetnacl/tools.dart';
import 'package:nkn_sdk/tweetnacl/keypair.dart';

void main() {
  test('hash sha256', () {
    var hexHash = sha256Hex('123456');
    expect(hexHash,
        'bf7cbe09d71a1bcc373ab9a764917f730a6ed951ffa1a7399b7abd8f8fd73cb4');
  });

  test('hash ripemd160', () {
    var hexHash = ripemd160Hex('123456');
    expect(hexHash, '99b6f3a3b7d96110deda57fa6c35153729eea168');
  });
}
