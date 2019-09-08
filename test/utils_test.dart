import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nkn_sdk/tweetnacl/tools.dart' as prefix0;
import 'package:nkn_sdk/utils.dart';
import 'package:nkn_sdk/tweetnacl/tools.dart';
import 'package:nkn_sdk/tweetnacl/keypair.dart';
import 'package:nkn_sdk/utils.dart';

void main() {
  test('genAddressVerifyBytesFromProgramHash', () {
    var res = genAddressVerifyBytesFromProgramHash(
        '1ee4bce30a23935c685cdd740ae9f9b04250dc8d');

    expect(res, [100, 22, 247, 125]);
  });

  test('programHashStringToAddress', () {
    var address =
    programHashStringToAddress('f5c1db61c1ecb85daa29609a8ca0f58696bf3916');
    expect(address, 'NKNZtYo7DtVGSQufgVcYcD44u4Fs2yKf91dF');
  });
}
