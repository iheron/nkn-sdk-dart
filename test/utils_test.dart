import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nkn_sdk/utils.dart';
import 'package:nkn_sdk/tweetnacl/tools.dart';
import 'package:nkn_sdk/tweetnacl/keypair.dart';

void main() {
  test('genAddressVerifyBytesFromProgramHash', () {
    var res = genAddressVerifyBytesFromProgramHash(
        '1ee4bce30a23935c685cdd740ae9f9b04250dc8d');

    expect(res, [100, 22, 247, 125]);
  });
}
