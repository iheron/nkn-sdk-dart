import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'tweetnacl/signature.dart';
import 'tweetnacl/tweetnaclfast.dart';

class Utils {
  static const ADDRESS_GEN_PREFIX = '02b825';
  static const ADDRESS_GEN_PREFIX_LEN = ADDRESS_GEN_PREFIX.length / 2;
  static const UINT160_LEN = 20;
  static const CHECKSUM_LEN = 4;
  static const ADDRESS_LEN =
      ADDRESS_GEN_PREFIX_LEN + UINT160_LEN + CHECKSUM_LEN;

  static Uint8List randomByte() {
    return TweetNaclFast.randombytes(Signature.seedLength);
  }

  static String hexEncode(Uint8List raw) {
    return hex.encode(raw).toLowerCase();
  }

  Uint8List hexDecode(String s) {
    return hex.decode(s);
  }

  static String publicKeyToSignatureRedeem(String publicKey) {
    return UINT160_LEN.toString() + publicKey + 'ac';
  }
}
