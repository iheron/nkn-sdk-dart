import 'dart:core';
import 'dart:typed_data';
import 'package:bs58check/bs58check.dart';
import 'package:convert/convert.dart';
import '../tweetnacl/tweetnaclfast.dart';
import 'package:nkn_sdk/crypto/hash.dart';

const ADDRESS_GEN_PREFIX = '02b825';
const ADDRESS_GEN_PREFIX_LEN = ADDRESS_GEN_PREFIX.length ~/ 2;
const UINT160_LEN = 20;
const CHECKSUM_LEN = 4;
const ADDRESS_LEN = ADDRESS_GEN_PREFIX_LEN + UINT160_LEN + CHECKSUM_LEN;
const SEED_LENGTH = 32;
const MAX_UINT_BITS = 48;
const MAX_UINT = 281474976710656;

Uint8List randomByte([len = SEED_LENGTH]) {
  return TweetNaclFast.randombytes(len);
}
int randomInt32() {
  Uint8List b = randomByte(4);
  b[0] &= 127;
  return (b[0]<<24) + (b[1]<<16) + (b[2]<<8) + b[3];
}

String hexEncode(List<int> raw) {
  return hex.encode(raw).toLowerCase();
}

List<int> hexDecode(String s) {
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
  return base58.encode(Uint8List.fromList(addressBaseData + addressVerifyBytes));
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

String addressStringToProgramHash(String address) {
  var addressBytes = base58.decode(address);
  var programHashBytes = addressBytes.sublist(ADDRESS_GEN_PREFIX_LEN, addressBytes.length - CHECKSUM_LEN);
  return hexEncode(programHashBytes);
}

String getAddressStringVerifyCode(String address) {
  var addressBytes = base58.decode(address);
  var verifyBytes = addressBytes.sublist(addressBytes.length - CHECKSUM_LEN);

  return hexEncode(verifyBytes);
}

String genAddressVerifyCodeFromProgramHash(String programHash) {
  var verifyBytes = genAddressVerifyBytesFromProgramHash(programHash);
  return hexEncode(verifyBytes);
}

bool verifyAddress(String address) {
  List addressBytes = base58.decode(address);
  if (addressBytes.length != ADDRESS_LEN) {
    return false;
  }
  var addressPrefixBytes = addressBytes.sublist(0, ADDRESS_GEN_PREFIX_LEN);
  var addressPrefix = hexEncode(addressPrefixBytes);
  if (addressPrefix != ADDRESS_GEN_PREFIX) {
    return false;
  }
  var programHash = addressStringToProgramHash(address);
  var addressVerifyCode = getAddressStringVerifyCode(address);
  var programHashVerifyCode = genAddressVerifyCodeFromProgramHash(programHash);
  return addressVerifyCode == programHashVerifyCode;
}

Uint8List getPublicKeyByClientAddr(String addr) {
  int n = addr.lastIndexOf('.');
  if (n < 0) {
    return hexDecode(addr);
  } else {
    return hexDecode(addr.substring(n + 1));
  }
}

Uint8List computeSharedKey(Uint8List myCurveSecretKey, Uint8List otherCurvePubkey){
  return new Box(otherCurvePubkey, myCurveSecretKey).before();
}

String encodeUint8(int value) {
  var buffer = new Uint8List(1).buffer;
  var bdata = new ByteData.view(buffer);
  bdata.setUint8(0, value);
  return bdata.getUint8(0).toRadixString(16).padLeft(2, '0');
}

String encodeUint16(int value) {
  var buffer = new Uint8List(2).buffer;
  var bdata = new ByteData.view(buffer);
  bdata.setUint16(0, value);
  return bdata.getUint16(0, Endian.little).toRadixString(16).padLeft(4, '0');
}

String encodeUint32(int value) {
  var buffer = new Uint8List(4).buffer;
  var bdata = new ByteData.view(buffer);
  bdata.setUint32(0, value);
  return bdata.getUint32(0, Endian.little).toRadixString(16).padLeft(8, '0');
}

String encodeUint64(int value) {
  var buffer = new Uint8List(8).buffer;
  var bdata = new ByteData.view(buffer);
  bdata.setUint64(0, value);
  return bdata.getUint64(0, Endian.little).toRadixString(16).padLeft(16, '0');
}

String encodeUint(value) {
  if (value < 0xfd) {
    return encodeUint8(value);
  } else if (value <= 0xffff) {
    return 'fd' + encodeUint16(value);
  } else if (value <= 0xffffffff) {
    return 'fe' + encodeUint32(value);
  } else {
    return 'ff' + encodeUint64(value);
  }
}

String encodeBytes(List<int> value) {
  return encodeUint(value.length) + hexEncode(value);
}

String encodeString(value) {
  return encodeUint(value.length) + value;
}

String encodeBool(value) {
  return encodeUint8(value ? 1 : 0);
}

signatureToParameter(List signed) {
  var list = signed.toList();
  list.insert(0, 0x40);
  return Uint8List.fromList(list);
}
