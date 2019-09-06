import 'package:pointycastle/pointycastle.dart' as pointycastle;
import 'package:crypto/crypto.dart';
import 'package:nkn_sdk/utils.dart';

String sha256Hex(String raw) {
  return sha256.convert(hexDecode(raw)).toString();
}

String ripemd160Hex(raw) {
  return hexEncode(
      new pointycastle.Digest('RIPEMD-160').process(hexDecode(raw)));
}
