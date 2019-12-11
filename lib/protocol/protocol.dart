import 'package:nkn_sdk/crypto/hash.dart';
import 'package:nkn_sdk/crypto/key.dart';
import 'package:nkn_sdk/pb/clientmessage.pb.dart';
import 'package:nkn_sdk/pb/payloads.pb.dart';
import 'package:nkn_sdk/pb/sigchain.pb.dart';
import 'package:nkn_sdk/utils/utils.dart';

const int PID_SIZE = 8;

serializeSigChainElem(SigChainElem sigChainElem) {
  String hex = '';
  hex += encodeBytes(sigChainElem.id);
  hex += encodeBytes(sigChainElem.nextPubkey);
  hex += encodeBool(sigChainElem.mining);
  return hex;
}

newPayload(type, replyToPid, data, msgPid) {
  Payload payload = new Payload();
  payload.type = type;
  if (replyToPid != null) {
    payload.replyToPid = replyToPid;
  } else if (msgPid != null) {
    payload.pid = msgPid;
  } else {
    payload.pid = randomBytes(PID_SIZE);
  }

  if(data != null) payload.data = data;
  return payload;
}

newClientMessage(messageType, message) {
  ClientMessage msg = new ClientMessage();
  msg.messageType = messageType;
  msg.message = message;
  return msg;
}

newOutboundMessage(dest, payload, maxHoldingSeconds, srcAddr, Key key, pubkey, {sigChainBlockHash}) {
  List<String> dests = new List<String>();
  if (!(dest is List)) {
    dests.add(dest);
  } else {
    dests.addAll(dest);
  }

  if (dest.length == 0) {
    throw "no destination";
  }

  SigChainElem sigChainElem = new SigChainElem();
  sigChainElem.nextPubkey = hexDecode(pubkey);
  var sigChainElemSerialized = serializeSigChainElem(sigChainElem);

  SigChain sigChain = new SigChain();
  sigChain.nonce = randomInt32();
  sigChain.dataSize = payload.length;
  if (sigChainBlockHash != null) {
    sigChain.blockHash = hexDecode(sigChainBlockHash);
  }
  sigChain.srcId = addr2Id(srcAddr);
  sigChain.srcPubkey = key.publicKey;

  List<List<int>> signatures = [];
  var hex, digest, signature;
  for (var i = 0; i < dests.length; i++) {
    // TODO: handle name service
    sigChain.destId = addr2Id(dests[i]);

    sigChain.destPubkey = getPublicKeyByClientAddr(dests[i]);
    hex = serializeSigChainMetadata(sigChain);
    digest = hexEncode(sha256Hex(hex));
    digest = hexEncode(sha256Hex(digest + sigChainElemSerialized));
    signature = key.sign(hexDecode(digest));
    signatures.add(signature);
  }

  OutboundMessage obMsg = new OutboundMessage();
  obMsg.dests.addAll(dests);
  obMsg.payload = payload;
  obMsg.maxHoldingSeconds = maxHoldingSeconds;
  obMsg.nonce = sigChain.nonce;
  obMsg.blockHash = sigChain.blockHash;
  obMsg.signatures.addAll(signatures);

  return obMsg;
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

newAckPayload(replyToPid, msgPid) {
  return newPayload(PayloadType.ACK, replyToPid, null, msgPid);
}

newBinaryPayload(data, replyToPid, msgPid) {
  return newPayload(PayloadType.BINARY, replyToPid, data, msgPid);
}

newTextPayload(text, replyToPid, msgPid) {
  TextData data = new TextData();
  data.text = text;
  return newPayload(PayloadType.TEXT, replyToPid, data.writeToBuffer(), msgPid);
}

newMessage(payload, encrypted, [nonce]) {
  Message msg = new Message();
  msg.payload = payload;
  msg.encrypted = encrypted;
  if (encrypted) {
    msg.nonce = nonce;
  }
  return msg;
}

serializeSigChainMetadata(SigChain sigChain) {
  String hex = '';
  hex += encodeUint32(sigChain.nonce);
  hex += encodeUint32(sigChain.dataSize);
  hex += encodeBytes(sigChain.blockHash);
  hex += encodeBytes(sigChain.srcId);
  hex += encodeBytes(sigChain.srcPubkey);
  hex += encodeBytes(sigChain.destId);
  hex += encodeBytes(sigChain.destPubkey);
  return hex;
}

addr2Id(addr) {
  return sha256(addr);
}
