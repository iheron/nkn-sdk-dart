import 'package:fixnum/fixnum.dart';
import 'package:nkn_sdk/configure/configure.dart';
import 'package:nkn_sdk/pb/transaction.pb.dart';
import 'package:nkn_sdk/utils/utils.dart';

Payload newTransfer(String sender, String recipient, double amount) {
  Int64 coin = Int64((amount * configure['NKN_ACC_MUL']).toInt());
  TransferAsset transfer = TransferAsset();
  transfer.sender = hexDecode(sender);
  transfer.recipient = hexDecode(recipient);
  transfer.amount = coin;

  Payload pld = Payload();
  pld.type = PayloadType.TRANSFER_ASSET_TYPE;
  pld.data = transfer.writeToBuffer();

  return pld;
}

Payload newRegisterName(String publicKey, String name) {
  RegisterName registerName = new RegisterName();
  registerName.registrant = hexDecode(publicKey);
  registerName.name = name;

  Payload pld = new Payload();
  pld.type = PayloadType.REGISTER_NAME_TYPE;
  pld.data = registerName.writeToBuffer();

  return pld;
}

Payload newDeleteName(String publicKey, String name) {
  DeleteName deleteName = new DeleteName();
  deleteName.registrant = hexDecode(publicKey);
  deleteName.name = name;

  Payload pld = new Payload();
  pld.type = PayloadType.DELETE_NAME_TYPE;
  pld.data = deleteName.writeToBuffer();

  return pld;
}

Payload newSubscribe(String subscriber, String identifier, String topic,
    int duration, String meta) {
  Subscribe subscribe = new Subscribe();
  subscribe.subscriber = hexDecode(subscriber);
  subscribe.identifier = identifier;
  subscribe.topic = topic;
  subscribe.duration = duration;
  subscribe.meta = meta;

  Payload pld = new Payload();
  pld.type = PayloadType.SUBSCRIBE_TYPE;
  pld.data = subscribe.writeToBuffer();

  return pld;
}

Payload newUnsubscribe(String subscriber, String identifier, String topic) {
  Unsubscribe unsubscribe = new Unsubscribe();
  unsubscribe.subscriber = hexDecode(subscriber);
  unsubscribe.identifier = identifier;
  unsubscribe.topic = topic;

  Payload pld = new Payload();
  pld.type = PayloadType.UNSUBSCRIBE_TYPE;
  pld.data = unsubscribe.writeToBuffer();

  return pld;
}

String serializePayload(Payload payload) {
  var hex = '';
  hex += encodeUint32(payload.type.hashCode);
  hex += encodeBytes(payload.data);
  return hex;
}
