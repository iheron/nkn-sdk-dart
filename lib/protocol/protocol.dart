import 'package:nkn_sdk/crypto/hash.dart';
import 'package:nkn_sdk/crypto/key.dart';
import 'package:nkn_sdk/pb/clientmessage.pb.dart';
import 'package:nkn_sdk/pb/sigchain.pb.dart';

import '../utils/utils.dart';

serializeSigChainElem(SigChainElem sigChainElem) {
  String hex = '';
  hex += encodeBytes(sigChainElem.id);
  hex += encodeBytes(sigChainElem.nextPubkey);
  hex += encodeBool(sigChainElem.mining);
  return hex;
}

newClientMessage(messageType, message) {
  ClientMessage msg = new ClientMessage();
  msg.messageType = messageType;
  msg.message = message;
  return msg;
}

newReceipt(prevSignature, Key key) {
  SigChainElem sigChainElem = new SigChainElem();
  String sigChainElemSerialized = serializeSigChainElem(sigChainElem);
  String digest = hexEncode(sha256Hex(hexEncode(sha256Hex(prevSignature)) + sigChainElemSerialized));
  var signature = key.sign(hexDecode(digest));
  var msg = new Receipt();
  msg.prevSignature = prevSignature;
  msg.signature = signature;
  return newClientMessage(ClientMessageType.RECEIPT, msg.writeToBuffer());
}

