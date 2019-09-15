import 'dart:core';
import 'dart:typed_data';
import 'package:bs58check/bs58check.dart';
import 'package:convert/convert.dart';
import 'package:pointycastle/block/aes_fast.dart';
import 'package:pointycastle/block/modes/cbc.dart';
import 'package:pointycastle/pointycastle.dart';
import 'tweetnacl/tweetnaclfast.dart';
import 'package:nkn_sdk/crypto/hash.dart';

const ADDRESS_GEN_PREFIX = '02b825';
const ADDRESS_GEN_PREFIX_LEN = ADDRESS_GEN_PREFIX.length / 2;
const UINT160_LEN = 20;
const CHECKSUM_LEN = 4;
const ADDRESS_LEN = ADDRESS_GEN_PREFIX_LEN + UINT160_LEN + CHECKSUM_LEN;
const SEED_LENGTH = 32;

Uint8List randomByte([len = SEED_LENGTH]) {
  return TweetNaclFast.randombytes(len);
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
  return hexEncode(ripemd160Hex(sha256Hex(hexStr)));
}

List<int> genAddressVerifyBytesFromProgramHash(String programHash) {
  programHash = ADDRESS_GEN_PREFIX + programHash;
  var verifyBytes = doubleSha256Hex(programHash);
  return verifyBytes.sublist(0, CHECKSUM_LEN);
}

String programHashStringToAddress(String programHash) {
  var addressVerifyBytes = genAddressVerifyBytesFromProgramHash(programHash);
  var addressBaseData = hexDecode(ADDRESS_GEN_PREFIX + programHash);
  return base58
      .encode(Uint8List.fromList(addressBaseData + addressVerifyBytes));
}

String prefixByteCountToHexString(String hexStr) {
  var len = hexStr.length;
  if (0 == len) {
    return '00';
  }
  if (1 == len % 2) {
    hexStr = '0' + hexStr;
    len += 1;
  }

  var byteCount = (len ~/ 2).toRadixString(16);

  if (1 == byteCount.length % 2) {
    byteCount = '0' + byteCount;
  }

  return byteCount + hexStr;
}

String genAccountContractString(signatureRedeem, programHash) {
  var contract = '';
  contract += prefixByteCountToHexString(signatureRedeem);
  contract += prefixByteCountToHexString('00');
  contract += programHash;
  return contract;
}
