///
//  Generated code. Do not modify.
//  source: pb/nodemessage.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MessageType extends $pb.ProtobufEnum {
  static const MessageType MESSAGE_TYPE_PLACEHOLDER_DO_NOT_USE = MessageType._(0, 'MESSAGE_TYPE_PLACEHOLDER_DO_NOT_USE');
  static const MessageType VOTE = MessageType._(1, 'VOTE');
  static const MessageType I_HAVE_BLOCK_PROPOSAL = MessageType._(2, 'I_HAVE_BLOCK_PROPOSAL');
  static const MessageType REQUEST_BLOCK_PROPOSAL = MessageType._(3, 'REQUEST_BLOCK_PROPOSAL');
  static const MessageType REQUEST_BLOCK_PROPOSAL_REPLY = MessageType._(4, 'REQUEST_BLOCK_PROPOSAL_REPLY');
  static const MessageType GET_CONSENSUS_STATE = MessageType._(5, 'GET_CONSENSUS_STATE');
  static const MessageType GET_CONSENSUS_STATE_REPLY = MessageType._(6, 'GET_CONSENSUS_STATE_REPLY');
  static const MessageType GET_BLOCK_HEADERS = MessageType._(7, 'GET_BLOCK_HEADERS');
  static const MessageType GET_BLOCK_HEADERS_REPLY = MessageType._(8, 'GET_BLOCK_HEADERS_REPLY');
  static const MessageType GET_BLOCKS = MessageType._(9, 'GET_BLOCKS');
  static const MessageType GET_BLOCKS_REPLY = MessageType._(10, 'GET_BLOCKS_REPLY');
  static const MessageType RELAY = MessageType._(11, 'RELAY');
  static const MessageType TRANSACTIONS = MessageType._(12, 'TRANSACTIONS');
  static const MessageType BACKTRACK_SIGNATURE_CHAIN = MessageType._(13, 'BACKTRACK_SIGNATURE_CHAIN');
  static const MessageType REQUEST_PROPOSAL_TRANSACTIONS = MessageType._(14, 'REQUEST_PROPOSAL_TRANSACTIONS');
  static const MessageType REQUEST_PROPOSAL_TRANSACTIONS_REPLY = MessageType._(15, 'REQUEST_PROPOSAL_TRANSACTIONS_REPLY');
  static const MessageType I_HAVE_SIGNATURE_CHAIN_TRANSACTION = MessageType._(16, 'I_HAVE_SIGNATURE_CHAIN_TRANSACTION');
  static const MessageType REQUEST_SIGNATURE_CHAIN_TRANSACTION = MessageType._(17, 'REQUEST_SIGNATURE_CHAIN_TRANSACTION');
  static const MessageType REQUEST_SIGNATURE_CHAIN_TRANSACTION_REPLY = MessageType._(18, 'REQUEST_SIGNATURE_CHAIN_TRANSACTION_REPLY');

  static const $core.List<MessageType> values = <MessageType> [
    MESSAGE_TYPE_PLACEHOLDER_DO_NOT_USE,
    VOTE,
    I_HAVE_BLOCK_PROPOSAL,
    REQUEST_BLOCK_PROPOSAL,
    REQUEST_BLOCK_PROPOSAL_REPLY,
    GET_CONSENSUS_STATE,
    GET_CONSENSUS_STATE_REPLY,
    GET_BLOCK_HEADERS,
    GET_BLOCK_HEADERS_REPLY,
    GET_BLOCKS,
    GET_BLOCKS_REPLY,
    RELAY,
    TRANSACTIONS,
    BACKTRACK_SIGNATURE_CHAIN,
    REQUEST_PROPOSAL_TRANSACTIONS,
    REQUEST_PROPOSAL_TRANSACTIONS_REPLY,
    I_HAVE_SIGNATURE_CHAIN_TRANSACTION,
    REQUEST_SIGNATURE_CHAIN_TRANSACTION,
    REQUEST_SIGNATURE_CHAIN_TRANSACTION_REPLY,
  ];

  static final $core.Map<$core.int, MessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MessageType valueOf($core.int value) => _byValue[value];

  const MessageType._($core.int v, $core.String n) : super(v, n);
}

class AllowedSignedMessageType extends $pb.ProtobufEnum {
  static const AllowedSignedMessageType ALLOW_SIGNED_PLACEHOLDER_DO_NOT_USE = AllowedSignedMessageType._(0, 'ALLOW_SIGNED_PLACEHOLDER_DO_NOT_USE');

  static const $core.List<AllowedSignedMessageType> values = <AllowedSignedMessageType> [
    ALLOW_SIGNED_PLACEHOLDER_DO_NOT_USE,
  ];

  static final $core.Map<$core.int, AllowedSignedMessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AllowedSignedMessageType valueOf($core.int value) => _byValue[value];

  const AllowedSignedMessageType._($core.int v, $core.String n) : super(v, n);
}

class AllowedUnsignedMessageType extends $pb.ProtobufEnum {
  static const AllowedUnsignedMessageType ALLOW_UNSIGNED_PLACEHOLDER_DO_NOT_USE = AllowedUnsignedMessageType._(0, 'ALLOW_UNSIGNED_PLACEHOLDER_DO_NOT_USE');
  static const AllowedUnsignedMessageType ALLOW_UNSIGNED_VOTE = AllowedUnsignedMessageType._(1, 'ALLOW_UNSIGNED_VOTE');
  static const AllowedUnsignedMessageType ALLOW_UNSIGNED_I_HAVE_BLOCK_PROPOSAL = AllowedUnsignedMessageType._(2, 'ALLOW_UNSIGNED_I_HAVE_BLOCK_PROPOSAL');
  static const AllowedUnsignedMessageType ALLOW_UNSIGNED_REQUEST_BLOCK_PROPOSAL = AllowedUnsignedMessageType._(3, 'ALLOW_UNSIGNED_REQUEST_BLOCK_PROPOSAL');
  static const AllowedUnsignedMessageType ALLOW_UNSIGNED_REQUEST_BLOCK_REPLY = AllowedUnsignedMessageType._(4, 'ALLOW_UNSIGNED_REQUEST_BLOCK_REPLY');
  static const AllowedUnsignedMessageType ALLOW_UNSIGNED_GET_CONSENSUS_STATE = AllowedUnsignedMessageType._(5, 'ALLOW_UNSIGNED_GET_CONSENSUS_STATE');
  static const AllowedUnsignedMessageType ALLOW_UNSIGNED_GET_CONSENSUS_STATE_REPLY = AllowedUnsignedMessageType._(6, 'ALLOW_UNSIGNED_GET_CONSENSUS_STATE_REPLY');
  static const AllowedUnsignedMessageType ALLOW_UNSIGNED_GET_BLOCK_HEADERS = AllowedUnsignedMessageType._(7, 'ALLOW_UNSIGNED_GET_BLOCK_HEADERS');
  static const AllowedUnsignedMessageType ALLOW_UNSIGNED_GET_BLOCK_HEADERS_REPLY = AllowedUnsignedMessageType._(8, 'ALLOW_UNSIGNED_GET_BLOCK_HEADERS_REPLY');
  static const AllowedUnsignedMessageType ALLOW_UNSIGNED_GET_BLOCKS = AllowedUnsignedMessageType._(9, 'ALLOW_UNSIGNED_GET_BLOCKS');
  static const AllowedUnsignedMessageType ALLOW_UNSIGNED_GET_BLOCKS_REPLY = AllowedUnsignedMessageType._(10, 'ALLOW_UNSIGNED_GET_BLOCKS_REPLY');
  static const AllowedUnsignedMessageType ALLOW_UNSIGNED_RELAY = AllowedUnsignedMessageType._(11, 'ALLOW_UNSIGNED_RELAY');
  static const AllowedUnsignedMessageType ALLOW_UNSIGNED_TRANSACTIONS = AllowedUnsignedMessageType._(12, 'ALLOW_UNSIGNED_TRANSACTIONS');
  static const AllowedUnsignedMessageType ALLOW_UNSIGNED_BACKTRACK_SIGNATURE_CHAIN = AllowedUnsignedMessageType._(13, 'ALLOW_UNSIGNED_BACKTRACK_SIGNATURE_CHAIN');
  static const AllowedUnsignedMessageType ALLOW_UNSIGNED_REQUEST_PROPOSAL_TRANSACTIONS = AllowedUnsignedMessageType._(14, 'ALLOW_UNSIGNED_REQUEST_PROPOSAL_TRANSACTIONS');
  static const AllowedUnsignedMessageType ALLOW_UNSIGNED_REQUEST_PROPOSAL_TRANSACTIONS_REPLY = AllowedUnsignedMessageType._(15, 'ALLOW_UNSIGNED_REQUEST_PROPOSAL_TRANSACTIONS_REPLY');
  static const AllowedUnsignedMessageType ALLOW_UNSIGNED_I_HAVE_SIGNATURE_CHAIN_TRANSACTION = AllowedUnsignedMessageType._(16, 'ALLOW_UNSIGNED_I_HAVE_SIGNATURE_CHAIN_TRANSACTION');
  static const AllowedUnsignedMessageType ALLOW_UNSIGNED_REQUEST_SIGNATURE_CHAIN_TRANSACTION = AllowedUnsignedMessageType._(17, 'ALLOW_UNSIGNED_REQUEST_SIGNATURE_CHAIN_TRANSACTION');
  static const AllowedUnsignedMessageType ALLOW_UNSIGNED_REQUEST_SIGNATURE_CHAIN_TRANSACTION_REPLY = AllowedUnsignedMessageType._(18, 'ALLOW_UNSIGNED_REQUEST_SIGNATURE_CHAIN_TRANSACTION_REPLY');

  static const $core.List<AllowedUnsignedMessageType> values = <AllowedUnsignedMessageType> [
    ALLOW_UNSIGNED_PLACEHOLDER_DO_NOT_USE,
    ALLOW_UNSIGNED_VOTE,
    ALLOW_UNSIGNED_I_HAVE_BLOCK_PROPOSAL,
    ALLOW_UNSIGNED_REQUEST_BLOCK_PROPOSAL,
    ALLOW_UNSIGNED_REQUEST_BLOCK_REPLY,
    ALLOW_UNSIGNED_GET_CONSENSUS_STATE,
    ALLOW_UNSIGNED_GET_CONSENSUS_STATE_REPLY,
    ALLOW_UNSIGNED_GET_BLOCK_HEADERS,
    ALLOW_UNSIGNED_GET_BLOCK_HEADERS_REPLY,
    ALLOW_UNSIGNED_GET_BLOCKS,
    ALLOW_UNSIGNED_GET_BLOCKS_REPLY,
    ALLOW_UNSIGNED_RELAY,
    ALLOW_UNSIGNED_TRANSACTIONS,
    ALLOW_UNSIGNED_BACKTRACK_SIGNATURE_CHAIN,
    ALLOW_UNSIGNED_REQUEST_PROPOSAL_TRANSACTIONS,
    ALLOW_UNSIGNED_REQUEST_PROPOSAL_TRANSACTIONS_REPLY,
    ALLOW_UNSIGNED_I_HAVE_SIGNATURE_CHAIN_TRANSACTION,
    ALLOW_UNSIGNED_REQUEST_SIGNATURE_CHAIN_TRANSACTION,
    ALLOW_UNSIGNED_REQUEST_SIGNATURE_CHAIN_TRANSACTION_REPLY,
  ];

  static final $core.Map<$core.int, AllowedUnsignedMessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AllowedUnsignedMessageType valueOf($core.int value) => _byValue[value];

  const AllowedUnsignedMessageType._($core.int v, $core.String n) : super(v, n);
}

class AllowedDirectMessageType extends $pb.ProtobufEnum {
  static const AllowedDirectMessageType ALLOW_DIRECT_PLACEHOLDER_DO_NOT_USE = AllowedDirectMessageType._(0, 'ALLOW_DIRECT_PLACEHOLDER_DO_NOT_USE');
  static const AllowedDirectMessageType ALLOW_DIRECT_VOTE = AllowedDirectMessageType._(1, 'ALLOW_DIRECT_VOTE');
  static const AllowedDirectMessageType ALLOW_DIRECT_I_HAVE_BLOCK_PROPOSAL = AllowedDirectMessageType._(2, 'ALLOW_DIRECT_I_HAVE_BLOCK_PROPOSAL');
  static const AllowedDirectMessageType ALLOW_DIRECT_REQUEST_BLOCK_PROPOSAL = AllowedDirectMessageType._(3, 'ALLOW_DIRECT_REQUEST_BLOCK_PROPOSAL');
  static const AllowedDirectMessageType ALLOW_DIRECT_REQUEST_BLOCK_REPLY = AllowedDirectMessageType._(4, 'ALLOW_DIRECT_REQUEST_BLOCK_REPLY');
  static const AllowedDirectMessageType ALLOW_DIRECT_GET_CONSENSUS_STATE = AllowedDirectMessageType._(5, 'ALLOW_DIRECT_GET_CONSENSUS_STATE');
  static const AllowedDirectMessageType ALLOW_DIRECT_GET_CONSENSUS_STATE_REPLY = AllowedDirectMessageType._(6, 'ALLOW_DIRECT_GET_CONSENSUS_STATE_REPLY');
  static const AllowedDirectMessageType ALLOW_DIRECT_GET_BLOCK_HEADERS = AllowedDirectMessageType._(7, 'ALLOW_DIRECT_GET_BLOCK_HEADERS');
  static const AllowedDirectMessageType ALLOW_DIRECT_GET_BLOCK_HEADERS_REPLY = AllowedDirectMessageType._(8, 'ALLOW_DIRECT_GET_BLOCK_HEADERS_REPLY');
  static const AllowedDirectMessageType ALLOW_DIRECT_GET_BLOCKS = AllowedDirectMessageType._(9, 'ALLOW_DIRECT_GET_BLOCKS');
  static const AllowedDirectMessageType ALLOW_DIRECT_GET_BLOCKS_REPLY = AllowedDirectMessageType._(10, 'ALLOW_DIRECT_GET_BLOCKS_REPLY');
  static const AllowedDirectMessageType ALLOW_DIRECT_BACKTRACK_SIGNATURE_CHAIN = AllowedDirectMessageType._(13, 'ALLOW_DIRECT_BACKTRACK_SIGNATURE_CHAIN');
  static const AllowedDirectMessageType ALLOW_DIRECT_REQUEST_PROPOSAL_TRANSACTIONS = AllowedDirectMessageType._(14, 'ALLOW_DIRECT_REQUEST_PROPOSAL_TRANSACTIONS');
  static const AllowedDirectMessageType ALLOW_DIRECT_REQUEST_PROPOSAL_TRANSACTIONS_REPLY = AllowedDirectMessageType._(15, 'ALLOW_DIRECT_REQUEST_PROPOSAL_TRANSACTIONS_REPLY');
  static const AllowedDirectMessageType ALLOW_DIRECT_I_HAVE_SIGNATURE_CHAIN_TRANSACTION = AllowedDirectMessageType._(16, 'ALLOW_DIRECT_I_HAVE_SIGNATURE_CHAIN_TRANSACTION');
  static const AllowedDirectMessageType ALLOW_DIRECT_REQUEST_SIGNATURE_CHAIN_TRANSACTION = AllowedDirectMessageType._(17, 'ALLOW_DIRECT_REQUEST_SIGNATURE_CHAIN_TRANSACTION');
  static const AllowedDirectMessageType ALLOW_DIRECT_REQUEST_SIGNATURE_CHAIN_TRANSACTION_REPLY = AllowedDirectMessageType._(18, 'ALLOW_DIRECT_REQUEST_SIGNATURE_CHAIN_TRANSACTION_REPLY');

  static const $core.List<AllowedDirectMessageType> values = <AllowedDirectMessageType> [
    ALLOW_DIRECT_PLACEHOLDER_DO_NOT_USE,
    ALLOW_DIRECT_VOTE,
    ALLOW_DIRECT_I_HAVE_BLOCK_PROPOSAL,
    ALLOW_DIRECT_REQUEST_BLOCK_PROPOSAL,
    ALLOW_DIRECT_REQUEST_BLOCK_REPLY,
    ALLOW_DIRECT_GET_CONSENSUS_STATE,
    ALLOW_DIRECT_GET_CONSENSUS_STATE_REPLY,
    ALLOW_DIRECT_GET_BLOCK_HEADERS,
    ALLOW_DIRECT_GET_BLOCK_HEADERS_REPLY,
    ALLOW_DIRECT_GET_BLOCKS,
    ALLOW_DIRECT_GET_BLOCKS_REPLY,
    ALLOW_DIRECT_BACKTRACK_SIGNATURE_CHAIN,
    ALLOW_DIRECT_REQUEST_PROPOSAL_TRANSACTIONS,
    ALLOW_DIRECT_REQUEST_PROPOSAL_TRANSACTIONS_REPLY,
    ALLOW_DIRECT_I_HAVE_SIGNATURE_CHAIN_TRANSACTION,
    ALLOW_DIRECT_REQUEST_SIGNATURE_CHAIN_TRANSACTION,
    ALLOW_DIRECT_REQUEST_SIGNATURE_CHAIN_TRANSACTION_REPLY,
  ];

  static final $core.Map<$core.int, AllowedDirectMessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AllowedDirectMessageType valueOf($core.int value) => _byValue[value];

  const AllowedDirectMessageType._($core.int v, $core.String n) : super(v, n);
}

class AllowedRelayMessageType extends $pb.ProtobufEnum {
  static const AllowedRelayMessageType ALLOW_RELAY_PLACEHOLDER_DO_NOT_USE = AllowedRelayMessageType._(0, 'ALLOW_RELAY_PLACEHOLDER_DO_NOT_USE');
  static const AllowedRelayMessageType ALLOW_RELAY_RELAY = AllowedRelayMessageType._(11, 'ALLOW_RELAY_RELAY');

  static const $core.List<AllowedRelayMessageType> values = <AllowedRelayMessageType> [
    ALLOW_RELAY_PLACEHOLDER_DO_NOT_USE,
    ALLOW_RELAY_RELAY,
  ];

  static final $core.Map<$core.int, AllowedRelayMessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AllowedRelayMessageType valueOf($core.int value) => _byValue[value];

  const AllowedRelayMessageType._($core.int v, $core.String n) : super(v, n);
}

class AllowedBroadcastPushMessageType extends $pb.ProtobufEnum {
  static const AllowedBroadcastPushMessageType ALLOW_BROADCAST_PUSH_PLACEHOLDER_DO_NOT_USE = AllowedBroadcastPushMessageType._(0, 'ALLOW_BROADCAST_PUSH_PLACEHOLDER_DO_NOT_USE');
  static const AllowedBroadcastPushMessageType ALLOW_BROADCAST_PUSH_TRANSACTIONS = AllowedBroadcastPushMessageType._(12, 'ALLOW_BROADCAST_PUSH_TRANSACTIONS');

  static const $core.List<AllowedBroadcastPushMessageType> values = <AllowedBroadcastPushMessageType> [
    ALLOW_BROADCAST_PUSH_PLACEHOLDER_DO_NOT_USE,
    ALLOW_BROADCAST_PUSH_TRANSACTIONS,
  ];

  static final $core.Map<$core.int, AllowedBroadcastPushMessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AllowedBroadcastPushMessageType valueOf($core.int value) => _byValue[value];

  const AllowedBroadcastPushMessageType._($core.int v, $core.String n) : super(v, n);
}

class AllowedBroadcastPullMessageType extends $pb.ProtobufEnum {
  static const AllowedBroadcastPullMessageType ALLOW_BROADCAST_PULL_PLACEHOLDER_DO_NOT_USE = AllowedBroadcastPullMessageType._(0, 'ALLOW_BROADCAST_PULL_PLACEHOLDER_DO_NOT_USE');

  static const $core.List<AllowedBroadcastPullMessageType> values = <AllowedBroadcastPullMessageType> [
    ALLOW_BROADCAST_PULL_PLACEHOLDER_DO_NOT_USE,
  ];

  static final $core.Map<$core.int, AllowedBroadcastPullMessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AllowedBroadcastPullMessageType valueOf($core.int value) => _byValue[value];

  const AllowedBroadcastPullMessageType._($core.int v, $core.String n) : super(v, n);
}

class AllowedBroadcastTreeMessageType extends $pb.ProtobufEnum {
  static const AllowedBroadcastTreeMessageType ALLOW_BROADCAST_TREE_PLACEHOLDER_DO_NOT_USE = AllowedBroadcastTreeMessageType._(0, 'ALLOW_BROADCAST_TREE_PLACEHOLDER_DO_NOT_USE');
  static const AllowedBroadcastTreeMessageType ALLOW_BROADCAST_TREE_TRANSACTIONS = AllowedBroadcastTreeMessageType._(12, 'ALLOW_BROADCAST_TREE_TRANSACTIONS');

  static const $core.List<AllowedBroadcastTreeMessageType> values = <AllowedBroadcastTreeMessageType> [
    ALLOW_BROADCAST_TREE_PLACEHOLDER_DO_NOT_USE,
    ALLOW_BROADCAST_TREE_TRANSACTIONS,
  ];

  static final $core.Map<$core.int, AllowedBroadcastTreeMessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AllowedBroadcastTreeMessageType valueOf($core.int value) => _byValue[value];

  const AllowedBroadcastTreeMessageType._($core.int v, $core.String n) : super(v, n);
}

class RequestTransactionType extends $pb.ProtobufEnum {
  static const RequestTransactionType REQUEST_FULL_TRANSACTION = RequestTransactionType._(0, 'REQUEST_FULL_TRANSACTION');
  static const RequestTransactionType REQUEST_TRANSACTION_HASH = RequestTransactionType._(1, 'REQUEST_TRANSACTION_HASH');
  static const RequestTransactionType REQUEST_TRANSACTION_SHORT_HASH = RequestTransactionType._(2, 'REQUEST_TRANSACTION_SHORT_HASH');

  static const $core.List<RequestTransactionType> values = <RequestTransactionType> [
    REQUEST_FULL_TRANSACTION,
    REQUEST_TRANSACTION_HASH,
    REQUEST_TRANSACTION_SHORT_HASH,
  ];

  static final $core.Map<$core.int, RequestTransactionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RequestTransactionType valueOf($core.int value) => _byValue[value];

  const RequestTransactionType._($core.int v, $core.String n) : super(v, n);
}

