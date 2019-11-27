import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nkn_sdk/tweetnacl/tools.dart' as prefix0;
import 'package:nkn_sdk/utils/utils.dart';
import 'package:nkn_sdk/tweetnacl/tools.dart';
import 'package:nkn_sdk/tweetnacl/keypair.dart';
import 'package:nkn_sdk/utils/utils.dart';

void main() {
  test('genAddressVerifyBytesFromProgramHash', () {
    var res = genAddressVerifyBytesFromProgramHash('1ee4bce30a23935c685cdd740ae9f9b04250dc8d');

    expect(res, [100, 22, 247, 125]);
  });

  test('programHashStringToAddress', () {
    var address = programHashStringToAddress('f5c1db61c1ecb85daa29609a8ca0f58696bf3916');
    expect(address, 'NKNZtYo7DtVGSQufgVcYcD44u4Fs2yKf91dF');
  });

  test('verifyAddress', () {
    var address = 'NKNZtYo7DtVGSQufgVcYcD44u4Fs2yKf91dF';
    var flag = verifyAddress(address);
    expect(flag, true);
  });

  test('encode uint', () {
    var uint8_1 = encodeUint8(0);
    expect(uint8_1, '00');
    var uint8_2 = encodeUint8(44);
    expect(uint8_2, '2c');
    var uint8_3 = encodeUint8(55);
    expect(uint8_3, '37');
    var uint8_4 = encodeUint8(1);
    expect(uint8_4, '01');

    var uint16_1 = encodeUint16(0);
    expect(uint16_1, '0000');
    var uint16_2 = encodeUint16(44);
    expect(uint16_2, '2c00');
    var uint16_3 = encodeUint16(55);
    expect(uint16_3, '3700');

    var uint32_1 = encodeUint32(0);
    expect(uint32_1, '00000000');
    var uint32_2 = encodeUint32(44);
    expect(uint32_2, '2c000000');
    var uint32_3 = encodeUint32(55);
    expect(uint32_3, '37000000');
    var uint32_4 = encodeUint32(1);
    expect(uint32_4, '01000000');

    var uint64_1 = encodeUint64(0);
    expect(uint64_1, '0000000000000000');
    var uint64_2 = encodeUint64(44);
    expect(uint64_2, '2c00000000000000');
    var uint64_3 = encodeUint64(55);
    expect(uint64_3, '3700000000000000');
  });
}
