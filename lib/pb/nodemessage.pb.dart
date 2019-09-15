///
//  Generated code. Do not modify.
//  source: pb/nodemessage.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'block.pb.dart' as $1;
import 'transaction.pb.dart' as $0;
import 'sigchain.pb.dart' as $2;

import 'nodemessage.pbenum.dart';
import 'node.pbenum.dart' as $3;

export 'nodemessage.pbenum.dart';

class UnsignedMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UnsignedMessage', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..e<MessageType>(1, 'messageType', $pb.PbFieldType.OE, defaultOrMaker: MessageType.MESSAGE_TYPE_PLACEHOLDER_DO_NOT_USE, valueOf: MessageType.valueOf, enumValues: MessageType.values)
    ..a<$core.List<$core.int>>(2, 'message', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  UnsignedMessage._() : super();
  factory UnsignedMessage() => create();
  factory UnsignedMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnsignedMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UnsignedMessage clone() => UnsignedMessage()..mergeFromMessage(this);
  UnsignedMessage copyWith(void Function(UnsignedMessage) updates) => super.copyWith((message) => updates(message as UnsignedMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnsignedMessage create() => UnsignedMessage._();
  UnsignedMessage createEmptyInstance() => create();
  static $pb.PbList<UnsignedMessage> createRepeated() => $pb.PbList<UnsignedMessage>();
  static UnsignedMessage getDefault() => _defaultInstance ??= create()..freeze();
  static UnsignedMessage _defaultInstance;

  MessageType get messageType => $_getN(0);
  set messageType(MessageType v) { setField(1, v); }
  $core.bool hasMessageType() => $_has(0);
  void clearMessageType() => clearField(1);

  $core.List<$core.int> get message => $_getN(1);
  set message($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);
}

class SignedMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignedMessage', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'message', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'signature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SignedMessage._() : super();
  factory SignedMessage() => create();
  factory SignedMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignedMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SignedMessage clone() => SignedMessage()..mergeFromMessage(this);
  SignedMessage copyWith(void Function(SignedMessage) updates) => super.copyWith((message) => updates(message as SignedMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignedMessage create() => SignedMessage._();
  SignedMessage createEmptyInstance() => create();
  static $pb.PbList<SignedMessage> createRepeated() => $pb.PbList<SignedMessage>();
  static SignedMessage getDefault() => _defaultInstance ??= create()..freeze();
  static SignedMessage _defaultInstance;

  $core.List<$core.int> get message => $_getN(0);
  set message($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasMessage() => $_has(0);
  void clearMessage() => clearField(1);

  $core.List<$core.int> get signature => $_getN(1);
  set signature($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasSignature() => $_has(1);
  void clearSignature() => clearField(2);
}

class Vote extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Vote', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'height', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(2, 'blockHash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Vote._() : super();
  factory Vote() => create();
  factory Vote.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Vote.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Vote clone() => Vote()..mergeFromMessage(this);
  Vote copyWith(void Function(Vote) updates) => super.copyWith((message) => updates(message as Vote));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Vote create() => Vote._();
  Vote createEmptyInstance() => create();
  static $pb.PbList<Vote> createRepeated() => $pb.PbList<Vote>();
  static Vote getDefault() => _defaultInstance ??= create()..freeze();
  static Vote _defaultInstance;

  $core.int get height => $_get(0, 0);
  set height($core.int v) { $_setUnsignedInt32(0, v); }
  $core.bool hasHeight() => $_has(0);
  void clearHeight() => clearField(1);

  $core.List<$core.int> get blockHash => $_getN(1);
  set blockHash($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasBlockHash() => $_has(1);
  void clearBlockHash() => clearField(2);
}

class IHaveBlockProposal extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IHaveBlockProposal', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'height', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(2, 'blockHash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  IHaveBlockProposal._() : super();
  factory IHaveBlockProposal() => create();
  factory IHaveBlockProposal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IHaveBlockProposal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  IHaveBlockProposal clone() => IHaveBlockProposal()..mergeFromMessage(this);
  IHaveBlockProposal copyWith(void Function(IHaveBlockProposal) updates) => super.copyWith((message) => updates(message as IHaveBlockProposal));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IHaveBlockProposal create() => IHaveBlockProposal._();
  IHaveBlockProposal createEmptyInstance() => create();
  static $pb.PbList<IHaveBlockProposal> createRepeated() => $pb.PbList<IHaveBlockProposal>();
  static IHaveBlockProposal getDefault() => _defaultInstance ??= create()..freeze();
  static IHaveBlockProposal _defaultInstance;

  $core.int get height => $_get(0, 0);
  set height($core.int v) { $_setUnsignedInt32(0, v); }
  $core.bool hasHeight() => $_has(0);
  void clearHeight() => clearField(1);

  $core.List<$core.int> get blockHash => $_getN(1);
  set blockHash($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasBlockHash() => $_has(1);
  void clearBlockHash() => clearField(2);
}

class RequestBlockProposal extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestBlockProposal', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'blockHash', $pb.PbFieldType.OY)
    ..e<RequestTransactionType>(2, 'type', $pb.PbFieldType.OE, defaultOrMaker: RequestTransactionType.REQUEST_FULL_TRANSACTION, valueOf: RequestTransactionType.valueOf, enumValues: RequestTransactionType.values)
    ..a<$core.List<$core.int>>(3, 'shortHashSalt', $pb.PbFieldType.OY)
    ..a<$core.int>(4, 'shortHashSize', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  RequestBlockProposal._() : super();
  factory RequestBlockProposal() => create();
  factory RequestBlockProposal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestBlockProposal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestBlockProposal clone() => RequestBlockProposal()..mergeFromMessage(this);
  RequestBlockProposal copyWith(void Function(RequestBlockProposal) updates) => super.copyWith((message) => updates(message as RequestBlockProposal));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestBlockProposal create() => RequestBlockProposal._();
  RequestBlockProposal createEmptyInstance() => create();
  static $pb.PbList<RequestBlockProposal> createRepeated() => $pb.PbList<RequestBlockProposal>();
  static RequestBlockProposal getDefault() => _defaultInstance ??= create()..freeze();
  static RequestBlockProposal _defaultInstance;

  $core.List<$core.int> get blockHash => $_getN(0);
  set blockHash($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasBlockHash() => $_has(0);
  void clearBlockHash() => clearField(1);

  RequestTransactionType get type => $_getN(1);
  set type(RequestTransactionType v) { setField(2, v); }
  $core.bool hasType() => $_has(1);
  void clearType() => clearField(2);

  $core.List<$core.int> get shortHashSalt => $_getN(2);
  set shortHashSalt($core.List<$core.int> v) { $_setBytes(2, v); }
  $core.bool hasShortHashSalt() => $_has(2);
  void clearShortHashSalt() => clearField(3);

  $core.int get shortHashSize => $_get(3, 0);
  set shortHashSize($core.int v) { $_setUnsignedInt32(3, v); }
  $core.bool hasShortHashSize() => $_has(3);
  void clearShortHashSize() => clearField(4);
}

class RequestBlockProposalReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestBlockProposalReply', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$1.Block>(1, 'block', $pb.PbFieldType.OM, defaultOrMaker: $1.Block.getDefault, subBuilder: $1.Block.create)
    ..p<$core.List<$core.int>>(2, 'transactionsHash', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  RequestBlockProposalReply._() : super();
  factory RequestBlockProposalReply() => create();
  factory RequestBlockProposalReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestBlockProposalReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestBlockProposalReply clone() => RequestBlockProposalReply()..mergeFromMessage(this);
  RequestBlockProposalReply copyWith(void Function(RequestBlockProposalReply) updates) => super.copyWith((message) => updates(message as RequestBlockProposalReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestBlockProposalReply create() => RequestBlockProposalReply._();
  RequestBlockProposalReply createEmptyInstance() => create();
  static $pb.PbList<RequestBlockProposalReply> createRepeated() => $pb.PbList<RequestBlockProposalReply>();
  static RequestBlockProposalReply getDefault() => _defaultInstance ??= create()..freeze();
  static RequestBlockProposalReply _defaultInstance;

  $1.Block get block => $_getN(0);
  set block($1.Block v) { setField(1, v); }
  $core.bool hasBlock() => $_has(0);
  void clearBlock() => clearField(1);

  $core.List<$core.List<$core.int>> get transactionsHash => $_getList(1);
}

class RequestProposalTransactions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestProposalTransactions', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'blockHash', $pb.PbFieldType.OY)
    ..e<RequestTransactionType>(2, 'type', $pb.PbFieldType.OE, defaultOrMaker: RequestTransactionType.REQUEST_FULL_TRANSACTION, valueOf: RequestTransactionType.valueOf, enumValues: RequestTransactionType.values)
    ..a<$core.List<$core.int>>(3, 'shortHashSalt', $pb.PbFieldType.OY)
    ..a<$core.int>(4, 'shortHashSize', $pb.PbFieldType.OU3)
    ..p<$core.List<$core.int>>(5, 'transactionsHash', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  RequestProposalTransactions._() : super();
  factory RequestProposalTransactions() => create();
  factory RequestProposalTransactions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestProposalTransactions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestProposalTransactions clone() => RequestProposalTransactions()..mergeFromMessage(this);
  RequestProposalTransactions copyWith(void Function(RequestProposalTransactions) updates) => super.copyWith((message) => updates(message as RequestProposalTransactions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestProposalTransactions create() => RequestProposalTransactions._();
  RequestProposalTransactions createEmptyInstance() => create();
  static $pb.PbList<RequestProposalTransactions> createRepeated() => $pb.PbList<RequestProposalTransactions>();
  static RequestProposalTransactions getDefault() => _defaultInstance ??= create()..freeze();
  static RequestProposalTransactions _defaultInstance;

  $core.List<$core.int> get blockHash => $_getN(0);
  set blockHash($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasBlockHash() => $_has(0);
  void clearBlockHash() => clearField(1);

  RequestTransactionType get type => $_getN(1);
  set type(RequestTransactionType v) { setField(2, v); }
  $core.bool hasType() => $_has(1);
  void clearType() => clearField(2);

  $core.List<$core.int> get shortHashSalt => $_getN(2);
  set shortHashSalt($core.List<$core.int> v) { $_setBytes(2, v); }
  $core.bool hasShortHashSalt() => $_has(2);
  void clearShortHashSalt() => clearField(3);

  $core.int get shortHashSize => $_get(3, 0);
  set shortHashSize($core.int v) { $_setUnsignedInt32(3, v); }
  $core.bool hasShortHashSize() => $_has(3);
  void clearShortHashSize() => clearField(4);

  $core.List<$core.List<$core.int>> get transactionsHash => $_getList(4);
}

class RequestProposalTransactionsReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestProposalTransactionsReply', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..pc<$0.Transaction>(1, 'transactions', $pb.PbFieldType.PM, subBuilder: $0.Transaction.create)
    ..hasRequiredFields = false
  ;

  RequestProposalTransactionsReply._() : super();
  factory RequestProposalTransactionsReply() => create();
  factory RequestProposalTransactionsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestProposalTransactionsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestProposalTransactionsReply clone() => RequestProposalTransactionsReply()..mergeFromMessage(this);
  RequestProposalTransactionsReply copyWith(void Function(RequestProposalTransactionsReply) updates) => super.copyWith((message) => updates(message as RequestProposalTransactionsReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestProposalTransactionsReply create() => RequestProposalTransactionsReply._();
  RequestProposalTransactionsReply createEmptyInstance() => create();
  static $pb.PbList<RequestProposalTransactionsReply> createRepeated() => $pb.PbList<RequestProposalTransactionsReply>();
  static RequestProposalTransactionsReply getDefault() => _defaultInstance ??= create()..freeze();
  static RequestProposalTransactionsReply _defaultInstance;

  $core.List<$0.Transaction> get transactions => $_getList(0);
}

class GetConsensusState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetConsensusState', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetConsensusState._() : super();
  factory GetConsensusState() => create();
  factory GetConsensusState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConsensusState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetConsensusState clone() => GetConsensusState()..mergeFromMessage(this);
  GetConsensusState copyWith(void Function(GetConsensusState) updates) => super.copyWith((message) => updates(message as GetConsensusState));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetConsensusState create() => GetConsensusState._();
  GetConsensusState createEmptyInstance() => create();
  static $pb.PbList<GetConsensusState> createRepeated() => $pb.PbList<GetConsensusState>();
  static GetConsensusState getDefault() => _defaultInstance ??= create()..freeze();
  static GetConsensusState _defaultInstance;
}

class GetConsensusStateReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetConsensusStateReply', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'ledgerHeight', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(2, 'ledgerBlockHash', $pb.PbFieldType.OY)
    ..a<$core.int>(3, 'consensusHeight', $pb.PbFieldType.OU3)
    ..e<$3.SyncState>(4, 'syncState', $pb.PbFieldType.OE, defaultOrMaker: $3.SyncState.WAIT_FOR_SYNCING, valueOf: $3.SyncState.valueOf, enumValues: $3.SyncState.values)
    ..a<$core.int>(5, 'minVerifiableHeight', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  GetConsensusStateReply._() : super();
  factory GetConsensusStateReply() => create();
  factory GetConsensusStateReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConsensusStateReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetConsensusStateReply clone() => GetConsensusStateReply()..mergeFromMessage(this);
  GetConsensusStateReply copyWith(void Function(GetConsensusStateReply) updates) => super.copyWith((message) => updates(message as GetConsensusStateReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetConsensusStateReply create() => GetConsensusStateReply._();
  GetConsensusStateReply createEmptyInstance() => create();
  static $pb.PbList<GetConsensusStateReply> createRepeated() => $pb.PbList<GetConsensusStateReply>();
  static GetConsensusStateReply getDefault() => _defaultInstance ??= create()..freeze();
  static GetConsensusStateReply _defaultInstance;

  $core.int get ledgerHeight => $_get(0, 0);
  set ledgerHeight($core.int v) { $_setUnsignedInt32(0, v); }
  $core.bool hasLedgerHeight() => $_has(0);
  void clearLedgerHeight() => clearField(1);

  $core.List<$core.int> get ledgerBlockHash => $_getN(1);
  set ledgerBlockHash($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasLedgerBlockHash() => $_has(1);
  void clearLedgerBlockHash() => clearField(2);

  $core.int get consensusHeight => $_get(2, 0);
  set consensusHeight($core.int v) { $_setUnsignedInt32(2, v); }
  $core.bool hasConsensusHeight() => $_has(2);
  void clearConsensusHeight() => clearField(3);

  $3.SyncState get syncState => $_getN(3);
  set syncState($3.SyncState v) { setField(4, v); }
  $core.bool hasSyncState() => $_has(3);
  void clearSyncState() => clearField(4);

  $core.int get minVerifiableHeight => $_get(4, 0);
  set minVerifiableHeight($core.int v) { $_setUnsignedInt32(4, v); }
  $core.bool hasMinVerifiableHeight() => $_has(4);
  void clearMinVerifiableHeight() => clearField(5);
}

class GetBlockHeaders extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetBlockHeaders', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'startHeight', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'endHeight', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  GetBlockHeaders._() : super();
  factory GetBlockHeaders() => create();
  factory GetBlockHeaders.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockHeaders.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetBlockHeaders clone() => GetBlockHeaders()..mergeFromMessage(this);
  GetBlockHeaders copyWith(void Function(GetBlockHeaders) updates) => super.copyWith((message) => updates(message as GetBlockHeaders));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockHeaders create() => GetBlockHeaders._();
  GetBlockHeaders createEmptyInstance() => create();
  static $pb.PbList<GetBlockHeaders> createRepeated() => $pb.PbList<GetBlockHeaders>();
  static GetBlockHeaders getDefault() => _defaultInstance ??= create()..freeze();
  static GetBlockHeaders _defaultInstance;

  $core.int get startHeight => $_get(0, 0);
  set startHeight($core.int v) { $_setUnsignedInt32(0, v); }
  $core.bool hasStartHeight() => $_has(0);
  void clearStartHeight() => clearField(1);

  $core.int get endHeight => $_get(1, 0);
  set endHeight($core.int v) { $_setUnsignedInt32(1, v); }
  $core.bool hasEndHeight() => $_has(1);
  void clearEndHeight() => clearField(2);
}

class GetBlockHeadersReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetBlockHeadersReply', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..pc<$1.Header>(1, 'blockHeaders', $pb.PbFieldType.PM, subBuilder: $1.Header.create)
    ..hasRequiredFields = false
  ;

  GetBlockHeadersReply._() : super();
  factory GetBlockHeadersReply() => create();
  factory GetBlockHeadersReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockHeadersReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetBlockHeadersReply clone() => GetBlockHeadersReply()..mergeFromMessage(this);
  GetBlockHeadersReply copyWith(void Function(GetBlockHeadersReply) updates) => super.copyWith((message) => updates(message as GetBlockHeadersReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockHeadersReply create() => GetBlockHeadersReply._();
  GetBlockHeadersReply createEmptyInstance() => create();
  static $pb.PbList<GetBlockHeadersReply> createRepeated() => $pb.PbList<GetBlockHeadersReply>();
  static GetBlockHeadersReply getDefault() => _defaultInstance ??= create()..freeze();
  static GetBlockHeadersReply _defaultInstance;

  $core.List<$1.Header> get blockHeaders => $_getList(0);
}

class GetBlocks extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetBlocks', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'startHeight', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'endHeight', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  GetBlocks._() : super();
  factory GetBlocks() => create();
  factory GetBlocks.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlocks.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetBlocks clone() => GetBlocks()..mergeFromMessage(this);
  GetBlocks copyWith(void Function(GetBlocks) updates) => super.copyWith((message) => updates(message as GetBlocks));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlocks create() => GetBlocks._();
  GetBlocks createEmptyInstance() => create();
  static $pb.PbList<GetBlocks> createRepeated() => $pb.PbList<GetBlocks>();
  static GetBlocks getDefault() => _defaultInstance ??= create()..freeze();
  static GetBlocks _defaultInstance;

  $core.int get startHeight => $_get(0, 0);
  set startHeight($core.int v) { $_setUnsignedInt32(0, v); }
  $core.bool hasStartHeight() => $_has(0);
  void clearStartHeight() => clearField(1);

  $core.int get endHeight => $_get(1, 0);
  set endHeight($core.int v) { $_setUnsignedInt32(1, v); }
  $core.bool hasEndHeight() => $_has(1);
  void clearEndHeight() => clearField(2);
}

class GetBlocksReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetBlocksReply', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..pc<$1.Block>(1, 'blocks', $pb.PbFieldType.PM, subBuilder: $1.Block.create)
    ..hasRequiredFields = false
  ;

  GetBlocksReply._() : super();
  factory GetBlocksReply() => create();
  factory GetBlocksReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlocksReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetBlocksReply clone() => GetBlocksReply()..mergeFromMessage(this);
  GetBlocksReply copyWith(void Function(GetBlocksReply) updates) => super.copyWith((message) => updates(message as GetBlocksReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlocksReply create() => GetBlocksReply._();
  GetBlocksReply createEmptyInstance() => create();
  static $pb.PbList<GetBlocksReply> createRepeated() => $pb.PbList<GetBlocksReply>();
  static GetBlocksReply getDefault() => _defaultInstance ??= create()..freeze();
  static GetBlocksReply _defaultInstance;

  $core.List<$1.Block> get blocks => $_getList(0);
}

class Relay extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Relay', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'srcIdentifier')
    ..a<$core.List<$core.int>>(2, 'destId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'payload', $pb.PbFieldType.OY)
    ..a<$core.int>(5, 'maxHoldingSeconds', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(6, 'srcPubkey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(7, 'blockHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(8, 'lastSignature', $pb.PbFieldType.OY)
    ..a<$core.int>(9, 'sigChainLen', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  Relay._() : super();
  factory Relay() => create();
  factory Relay.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Relay.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Relay clone() => Relay()..mergeFromMessage(this);
  Relay copyWith(void Function(Relay) updates) => super.copyWith((message) => updates(message as Relay));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Relay create() => Relay._();
  Relay createEmptyInstance() => create();
  static $pb.PbList<Relay> createRepeated() => $pb.PbList<Relay>();
  static Relay getDefault() => _defaultInstance ??= create()..freeze();
  static Relay _defaultInstance;

  $core.String get srcIdentifier => $_getS(0, '');
  set srcIdentifier($core.String v) { $_setString(0, v); }
  $core.bool hasSrcIdentifier() => $_has(0);
  void clearSrcIdentifier() => clearField(1);

  $core.List<$core.int> get destId => $_getN(1);
  set destId($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasDestId() => $_has(1);
  void clearDestId() => clearField(2);

  $core.List<$core.int> get payload => $_getN(2);
  set payload($core.List<$core.int> v) { $_setBytes(2, v); }
  $core.bool hasPayload() => $_has(2);
  void clearPayload() => clearField(3);

  $core.int get maxHoldingSeconds => $_get(3, 0);
  set maxHoldingSeconds($core.int v) { $_setUnsignedInt32(3, v); }
  $core.bool hasMaxHoldingSeconds() => $_has(3);
  void clearMaxHoldingSeconds() => clearField(5);

  $core.List<$core.int> get srcPubkey => $_getN(4);
  set srcPubkey($core.List<$core.int> v) { $_setBytes(4, v); }
  $core.bool hasSrcPubkey() => $_has(4);
  void clearSrcPubkey() => clearField(6);

  $core.List<$core.int> get blockHash => $_getN(5);
  set blockHash($core.List<$core.int> v) { $_setBytes(5, v); }
  $core.bool hasBlockHash() => $_has(5);
  void clearBlockHash() => clearField(7);

  $core.List<$core.int> get lastSignature => $_getN(6);
  set lastSignature($core.List<$core.int> v) { $_setBytes(6, v); }
  $core.bool hasLastSignature() => $_has(6);
  void clearLastSignature() => clearField(8);

  $core.int get sigChainLen => $_get(7, 0);
  set sigChainLen($core.int v) { $_setUnsignedInt32(7, v); }
  $core.bool hasSigChainLen() => $_has(7);
  void clearSigChainLen() => clearField(9);
}

class Transactions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Transactions', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..pc<$0.Transaction>(1, 'transactions', $pb.PbFieldType.PM, subBuilder: $0.Transaction.create)
    ..hasRequiredFields = false
  ;

  Transactions._() : super();
  factory Transactions() => create();
  factory Transactions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Transactions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Transactions clone() => Transactions()..mergeFromMessage(this);
  Transactions copyWith(void Function(Transactions) updates) => super.copyWith((message) => updates(message as Transactions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Transactions create() => Transactions._();
  Transactions createEmptyInstance() => create();
  static $pb.PbList<Transactions> createRepeated() => $pb.PbList<Transactions>();
  static Transactions getDefault() => _defaultInstance ??= create()..freeze();
  static Transactions _defaultInstance;

  $core.List<$0.Transaction> get transactions => $_getList(0);
}

class BacktrackSignatureChain extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BacktrackSignatureChain', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..pc<$2.SigChainElem>(1, 'sigChainElems', $pb.PbFieldType.PM, subBuilder: $2.SigChainElem.create)
    ..a<$core.List<$core.int>>(2, 'prevSignature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  BacktrackSignatureChain._() : super();
  factory BacktrackSignatureChain() => create();
  factory BacktrackSignatureChain.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BacktrackSignatureChain.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BacktrackSignatureChain clone() => BacktrackSignatureChain()..mergeFromMessage(this);
  BacktrackSignatureChain copyWith(void Function(BacktrackSignatureChain) updates) => super.copyWith((message) => updates(message as BacktrackSignatureChain));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BacktrackSignatureChain create() => BacktrackSignatureChain._();
  BacktrackSignatureChain createEmptyInstance() => create();
  static $pb.PbList<BacktrackSignatureChain> createRepeated() => $pb.PbList<BacktrackSignatureChain>();
  static BacktrackSignatureChain getDefault() => _defaultInstance ??= create()..freeze();
  static BacktrackSignatureChain _defaultInstance;

  $core.List<$2.SigChainElem> get sigChainElems => $_getList(0);

  $core.List<$core.int> get prevSignature => $_getN(1);
  set prevSignature($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasPrevSignature() => $_has(1);
  void clearPrevSignature() => clearField(2);
}

class IHaveSignatureChainTransaction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IHaveSignatureChainTransaction', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'height', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(2, 'signatureHash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  IHaveSignatureChainTransaction._() : super();
  factory IHaveSignatureChainTransaction() => create();
  factory IHaveSignatureChainTransaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IHaveSignatureChainTransaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  IHaveSignatureChainTransaction clone() => IHaveSignatureChainTransaction()..mergeFromMessage(this);
  IHaveSignatureChainTransaction copyWith(void Function(IHaveSignatureChainTransaction) updates) => super.copyWith((message) => updates(message as IHaveSignatureChainTransaction));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IHaveSignatureChainTransaction create() => IHaveSignatureChainTransaction._();
  IHaveSignatureChainTransaction createEmptyInstance() => create();
  static $pb.PbList<IHaveSignatureChainTransaction> createRepeated() => $pb.PbList<IHaveSignatureChainTransaction>();
  static IHaveSignatureChainTransaction getDefault() => _defaultInstance ??= create()..freeze();
  static IHaveSignatureChainTransaction _defaultInstance;

  $core.int get height => $_get(0, 0);
  set height($core.int v) { $_setUnsignedInt32(0, v); }
  $core.bool hasHeight() => $_has(0);
  void clearHeight() => clearField(1);

  $core.List<$core.int> get signatureHash => $_getN(1);
  set signatureHash($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasSignatureHash() => $_has(1);
  void clearSignatureHash() => clearField(2);
}

class RequestSignatureChainTransaction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestSignatureChainTransaction', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'signatureHash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RequestSignatureChainTransaction._() : super();
  factory RequestSignatureChainTransaction() => create();
  factory RequestSignatureChainTransaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestSignatureChainTransaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestSignatureChainTransaction clone() => RequestSignatureChainTransaction()..mergeFromMessage(this);
  RequestSignatureChainTransaction copyWith(void Function(RequestSignatureChainTransaction) updates) => super.copyWith((message) => updates(message as RequestSignatureChainTransaction));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestSignatureChainTransaction create() => RequestSignatureChainTransaction._();
  RequestSignatureChainTransaction createEmptyInstance() => create();
  static $pb.PbList<RequestSignatureChainTransaction> createRepeated() => $pb.PbList<RequestSignatureChainTransaction>();
  static RequestSignatureChainTransaction getDefault() => _defaultInstance ??= create()..freeze();
  static RequestSignatureChainTransaction _defaultInstance;

  $core.List<$core.int> get signatureHash => $_getN(0);
  set signatureHash($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasSignatureHash() => $_has(0);
  void clearSignatureHash() => clearField(1);
}

class RequestSignatureChainTransactionReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestSignatureChainTransactionReply', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$0.Transaction>(1, 'transaction', $pb.PbFieldType.OM, defaultOrMaker: $0.Transaction.getDefault, subBuilder: $0.Transaction.create)
    ..hasRequiredFields = false
  ;

  RequestSignatureChainTransactionReply._() : super();
  factory RequestSignatureChainTransactionReply() => create();
  factory RequestSignatureChainTransactionReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestSignatureChainTransactionReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestSignatureChainTransactionReply clone() => RequestSignatureChainTransactionReply()..mergeFromMessage(this);
  RequestSignatureChainTransactionReply copyWith(void Function(RequestSignatureChainTransactionReply) updates) => super.copyWith((message) => updates(message as RequestSignatureChainTransactionReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestSignatureChainTransactionReply create() => RequestSignatureChainTransactionReply._();
  RequestSignatureChainTransactionReply createEmptyInstance() => create();
  static $pb.PbList<RequestSignatureChainTransactionReply> createRepeated() => $pb.PbList<RequestSignatureChainTransactionReply>();
  static RequestSignatureChainTransactionReply getDefault() => _defaultInstance ??= create()..freeze();
  static RequestSignatureChainTransactionReply _defaultInstance;

  $0.Transaction get transaction => $_getN(0);
  set transaction($0.Transaction v) { setField(1, v); }
  $core.bool hasTransaction() => $_has(0);
  void clearTransaction() => clearField(1);
}

