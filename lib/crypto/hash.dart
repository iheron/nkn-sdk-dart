import 'dart:convert';
import 'package:pointycastle/pointycastle.dart' as pointycastle;
import 'package:crypto/crypto.dart' as crypto;
import 'package:nkn_sdk/utils.dart';

String sha256(raw) {
  var byte;
  if (raw is List<int>)
    byte = raw;
  else if (raw is String) byte = utf8.encode(raw);
  return crypto.sha256.convert(byte).toString();
}

String sha256Hex(String raw) {
  var byte;
  if (raw is List<int>)
    byte = raw;
  else if (raw is String) byte = hexDecode(raw);
  return crypto.sha256.convert(byte).toString();
}

String doubleSha256Hex(String raw) {
  return crypto.sha256.convert(crypto.sha256.convert(hexDecode(raw)).bytes).toString();
}

String ripemd160Hex(raw) {
  return hexEncode(
      new pointycastle.Digest('RIPEMD-160').process(hexDecode(raw)));
}
