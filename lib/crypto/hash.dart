import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:pointycastle/pointycastle.dart' as pointycastle;
import 'package:crypto/crypto.dart';

import 'package:pointycastle/digests/ripemd160.dart';

String sha256Hex(String raw) {
  return sha256.convert(hex.decode(raw)).toString();
}

String ripemd160Hex(raw) {
  return hex.encode( new pointycastle.Digest('RIPEMD-160').process(hex.decode(raw)));
}
