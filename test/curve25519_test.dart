import 'dart:math';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:nkn_sdk/utils/ed2curve.dart';
import 'package:nkn_sdk/utils/utils.dart';

void main() {
  test('ed2curve', () {
    var res = convertPublicKey(hexDecode('25ac590eaca614a0ba4c4387d8514a0b54e948d120c6ff49564e7830c9dec929'));
    expect(hexEncode(res), 'e6295616de639b711a97aea07d18f16c76afc5b046fe0a076b649be8ca2fbb0c');
  });

  test('crypto box', () {});
}
