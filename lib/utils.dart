import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'tweetnacl/signature.dart';
import 'tweetnacl/tweetnaclfast.dart';
import 'package:nkn_sdk/crypto/hash.dart';

const ADDRESS_GEN_PREFIX = '02b825';
const ADDRESS_GEN_PREFIX_LEN = ADDRESS_GEN_PREFIX.length / 2;
const UINT160_LEN = 20;
const CHECKSUM_LEN = 4;
const ADDRESS_LEN = ADDRESS_GEN_PREFIX_LEN + UINT160_LEN + CHECKSUM_LEN;

Uint8List randomByte() {
  return TweetNaclFast.randombytes(Signature.seedLength);
}

String hexEncode(Uint8List raw) {
  return hex.encode(raw).toLowerCase();
}

Uint8List hexDecode(String s) {
  return hex.decode(s);
}

String publicKeyToSignatureRedeem(String publicKey) {
  return UINT160_LEN.toString() + publicKey + 'ac';
}

String hexStringToProgramHash(String hexStr) {
  return ripemd160Hex(sha256Hex(hexStr));
}
