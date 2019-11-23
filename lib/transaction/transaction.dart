import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:nkn_sdk/configure/configure.dart';
import 'package:nkn_sdk/crypto/account.dart';
import 'package:nkn_sdk/crypto/hash.dart';
import 'package:nkn_sdk/pb/transaction.pb.dart';
import 'package:nkn_sdk/transaction/payload.dart';
import 'package:nkn_sdk/utils/utils.dart';

serializeUnsignedTx(UnsignedTx unsignedTx) {
  var hex = '';
  hex += serializePayload(unsignedTx.payload);
  hex += encodeUint64(unsignedTx.nonce.toInt());
  hex += encodeUint64(unsignedTx.fee.toInt());
  hex += encodeBytes(Uint8List.fromList( unsignedTx.attributes));
  return hex;
}

signTx(Account account, Transaction txn) {
  UnsignedTx unsignedTx = txn.unsignedTx;
  String hex = serializeUnsignedTx(unsignedTx);

  Uint8List digest = sha256Hex(hex);

  Uint8List signature = account.key.sign(digest);

  Program prgm = Program();
  prgm.code = hexDecode(account.signatureRedeem);
  prgm.parameter = signatureToParameter(signature);

  txn.programs.add(prgm);
}

newTransaction(Account account, pld, nonce, {Int64 fee, attrs=''}) {
  fee = fee ?? Int64(0);
  fee = (fee * configure['NKN_ACC_MUL']);

  UnsignedTx unsignedTx = UnsignedTx();
  unsignedTx.payload = pld;
  unsignedTx.nonce = Int64(nonce);
  unsignedTx.fee = fee ?? Int64(0);

  if (!(attrs.isEmpty)) unsignedTx.attributes = hexDecode(attrs);

  Transaction txn = Transaction();
  txn.unsignedTx = unsignedTx;
  signTx(account, txn);
  return txn;
}
