import 'dart:convert';
import 'package:pointycastle/pointycastle.dart' as pointycastle;
import 'package:crypto/crypto.dart' as crypto;
import 'package:nkn_sdk/utils/utils.dart';

List<int> sha256(raw) {
  var byte;
  if (raw is List<int>)
    byte = raw;
  else if (raw is String) byte = utf8.encode(raw);
  return crypto.sha256.convert(byte).bytes;
}

List<int> sha256Hex(raw) {
  var byte;
  if (raw is List<int>)
    byte = raw;
  else if (raw is String) byte = hexDecode(raw);
  return crypto.sha256.convert(byte).bytes;
}

List<int> doubleSha256(raw) {
  return sha256(sha256(raw));
}

List<int> doubleSha256Hex(String raw) {
  return sha256(sha256(hexDecode(raw)));
}

List<int> ripemd160Hex(raw) {
  var byte;
  if (raw is List<int>)
    byte = raw;
  else if (raw is String) byte = hexDecode(raw);
  return new pointycastle.Digest('RIPEMD-160').process(byte);
}
