import 'dart:typed_data';

import 'package:nkn_sdk/tweetnacl/tweetnaclfast.dart';
import 'package:pointycastle/api.dart';
import 'package:pointycastle/block/aes_fast.dart';
import 'package:pointycastle/block/modes/cbc.dart';

import 'hash.dart';
import '../utils.dart';

Uint8List genAESIV() {
  return TweetNaclFast.randombytes(16);
}

Uint8List genAESPassword() {
  return TweetNaclFast.randombytes(32);
}

Uint8List _processBlocks(Uint8List input, CBCBlockCipher engine) {
  var output = new Uint8List(input.lengthInBytes);

  for (int offset = 0; offset < input.lengthInBytes;) {
    offset += engine.processBlock(input, offset, output, offset);
  }

  return output;
}

Uint8List encrypt(plaintext, password, iv, {bool isSimplePassword = false}) {
  password = isSimplePassword ? hexEncode(doubleSha256(password)) : password;

  var params = ParametersWithIV(KeyParameter(password), iv);
  BlockCipher cipher = CBCBlockCipher(AESFastEngine());
  cipher.init(true, params);

  return _processBlocks(plaintext, cipher);
}

Uint8List decrypt(Uint8List ciphertext, Uint8List password, Uint8List iv,
    {bool isSimplePassword = false}) {
  password = isSimplePassword ? hexEncode(doubleSha256(password)) : password;

  var params = ParametersWithIV(KeyParameter(password), iv);
  BlockCipher cipher = CBCBlockCipher(AESFastEngine());
  cipher.init(false, params);

  return _processBlocks(ciphertext, cipher);
}
