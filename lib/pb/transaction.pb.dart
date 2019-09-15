///
//  Generated code. Do not modify.
//  source: pb/transaction.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'transaction.pbenum.dart';

export 'transaction.pbenum.dart';

class UnsignedTx extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UnsignedTx', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<Payload>(1, 'payload', $pb.PbFieldType.OM, defaultOrMaker: Payload.getDefault, subBuilder: Payload.create)
    ..a<Int64>(2, 'nonce', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..aInt64(3, 'fee')
    ..a<$core.List<$core.int>>(4, 'attributes', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  UnsignedTx._() : super();
  factory UnsignedTx() => create();
  factory UnsignedTx.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnsignedTx.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UnsignedTx clone() => UnsignedTx()..mergeFromMessage(this);
  UnsignedTx copyWith(void Function(UnsignedTx) updates) => super.copyWith((message) => updates(message as UnsignedTx));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnsignedTx create() => UnsignedTx._();
  UnsignedTx createEmptyInstance() => create();
  static $pb.PbList<UnsignedTx> createRepeated() => $pb.PbList<UnsignedTx>();
  static UnsignedTx getDefault() => _defaultInstance ??= create()..freeze();
  static UnsignedTx _defaultInstance;

  Payload get payload => $_getN(0);
  set payload(Payload v) { setField(1, v); }
  $core.bool hasPayload() => $_has(0);
  void clearPayload() => clearField(1);

  Int64 get nonce => $_getI64(1);
  set nonce(Int64 v) { $_setInt64(1, v); }
  $core.bool hasNonce() => $_has(1);
  void clearNonce() => clearField(2);

  Int64 get fee => $_getI64(2);
  set fee(Int64 v) { $_setInt64(2, v); }
  $core.bool hasFee() => $_has(2);
  void clearFee() => clearField(3);

  $core.List<$core.int> get attributes => $_getN(3);
  set attributes($core.List<$core.int> v) { $_setBytes(3, v); }
  $core.bool hasAttributes() => $_has(3);
  void clearAttributes() => clearField(4);
}

class Transaction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Transaction', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<UnsignedTx>(1, 'unsignedTx', $pb.PbFieldType.OM, defaultOrMaker: UnsignedTx.getDefault, subBuilder: UnsignedTx.create)
    ..pc<Program>(2, 'programs', $pb.PbFieldType.PM, subBuilder: Program.create)
    ..hasRequiredFields = false
  ;

  Transaction._() : super();
  factory Transaction() => create();
  factory Transaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Transaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Transaction clone() => Transaction()..mergeFromMessage(this);
  Transaction copyWith(void Function(Transaction) updates) => super.copyWith((message) => updates(message as Transaction));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Transaction create() => Transaction._();
  Transaction createEmptyInstance() => create();
  static $pb.PbList<Transaction> createRepeated() => $pb.PbList<Transaction>();
  static Transaction getDefault() => _defaultInstance ??= create()..freeze();
  static Transaction _defaultInstance;

  UnsignedTx get unsignedTx => $_getN(0);
  set unsignedTx(UnsignedTx v) { setField(1, v); }
  $core.bool hasUnsignedTx() => $_has(0);
  void clearUnsignedTx() => clearField(1);

  $core.List<Program> get programs => $_getList(1);
}

class Program extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Program', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'code', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'parameter', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Program._() : super();
  factory Program() => create();
  factory Program.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Program.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Program clone() => Program()..mergeFromMessage(this);
  Program copyWith(void Function(Program) updates) => super.copyWith((message) => updates(message as Program));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Program create() => Program._();
  Program createEmptyInstance() => create();
  static $pb.PbList<Program> createRepeated() => $pb.PbList<Program>();
  static Program getDefault() => _defaultInstance ??= create()..freeze();
  static Program _defaultInstance;

  $core.List<$core.int> get code => $_getN(0);
  set code($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasCode() => $_has(0);
  void clearCode() => clearField(1);

  $core.List<$core.int> get parameter => $_getN(1);
  set parameter($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasParameter() => $_has(1);
  void clearParameter() => clearField(2);
}

class Payload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Payload', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..e<PayloadType>(1, 'type', $pb.PbFieldType.OE, defaultOrMaker: PayloadType.COINBASE_TYPE, valueOf: PayloadType.valueOf, enumValues: PayloadType.values)
    ..a<$core.List<$core.int>>(2, 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Payload._() : super();
  factory Payload() => create();
  factory Payload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Payload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Payload clone() => Payload()..mergeFromMessage(this);
  Payload copyWith(void Function(Payload) updates) => super.copyWith((message) => updates(message as Payload));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Payload create() => Payload._();
  Payload createEmptyInstance() => create();
  static $pb.PbList<Payload> createRepeated() => $pb.PbList<Payload>();
  static Payload getDefault() => _defaultInstance ??= create()..freeze();
  static Payload _defaultInstance;

  PayloadType get type => $_getN(0);
  set type(PayloadType v) { setField(1, v); }
  $core.bool hasType() => $_has(0);
  void clearType() => clearField(1);

  $core.List<$core.int> get data => $_getN(1);
  set data($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasData() => $_has(1);
  void clearData() => clearField(2);
}

class Coinbase extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Coinbase', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'sender', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'recipient', $pb.PbFieldType.OY)
    ..aInt64(3, 'amount')
    ..hasRequiredFields = false
  ;

  Coinbase._() : super();
  factory Coinbase() => create();
  factory Coinbase.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Coinbase.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Coinbase clone() => Coinbase()..mergeFromMessage(this);
  Coinbase copyWith(void Function(Coinbase) updates) => super.copyWith((message) => updates(message as Coinbase));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Coinbase create() => Coinbase._();
  Coinbase createEmptyInstance() => create();
  static $pb.PbList<Coinbase> createRepeated() => $pb.PbList<Coinbase>();
  static Coinbase getDefault() => _defaultInstance ??= create()..freeze();
  static Coinbase _defaultInstance;

  $core.List<$core.int> get sender => $_getN(0);
  set sender($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasSender() => $_has(0);
  void clearSender() => clearField(1);

  $core.List<$core.int> get recipient => $_getN(1);
  set recipient($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasRecipient() => $_has(1);
  void clearRecipient() => clearField(2);

  Int64 get amount => $_getI64(2);
  set amount(Int64 v) { $_setInt64(2, v); }
  $core.bool hasAmount() => $_has(2);
  void clearAmount() => clearField(3);
}

class SigChainTxn extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SigChainTxn', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'sigChain', $pb.PbFieldType.OY, protoName: 'sigChain')
    ..a<$core.List<$core.int>>(2, 'submitter', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SigChainTxn._() : super();
  factory SigChainTxn() => create();
  factory SigChainTxn.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SigChainTxn.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SigChainTxn clone() => SigChainTxn()..mergeFromMessage(this);
  SigChainTxn copyWith(void Function(SigChainTxn) updates) => super.copyWith((message) => updates(message as SigChainTxn));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SigChainTxn create() => SigChainTxn._();
  SigChainTxn createEmptyInstance() => create();
  static $pb.PbList<SigChainTxn> createRepeated() => $pb.PbList<SigChainTxn>();
  static SigChainTxn getDefault() => _defaultInstance ??= create()..freeze();
  static SigChainTxn _defaultInstance;

  $core.List<$core.int> get sigChain => $_getN(0);
  set sigChain($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasSigChain() => $_has(0);
  void clearSigChain() => clearField(1);

  $core.List<$core.int> get submitter => $_getN(1);
  set submitter($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasSubmitter() => $_has(1);
  void clearSubmitter() => clearField(2);
}

class RegisterName extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RegisterName', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'registrant', $pb.PbFieldType.OY)
    ..aOS(2, 'name')
    ..hasRequiredFields = false
  ;

  RegisterName._() : super();
  factory RegisterName() => create();
  factory RegisterName.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterName.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RegisterName clone() => RegisterName()..mergeFromMessage(this);
  RegisterName copyWith(void Function(RegisterName) updates) => super.copyWith((message) => updates(message as RegisterName));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterName create() => RegisterName._();
  RegisterName createEmptyInstance() => create();
  static $pb.PbList<RegisterName> createRepeated() => $pb.PbList<RegisterName>();
  static RegisterName getDefault() => _defaultInstance ??= create()..freeze();
  static RegisterName _defaultInstance;

  $core.List<$core.int> get registrant => $_getN(0);
  set registrant($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasRegistrant() => $_has(0);
  void clearRegistrant() => clearField(1);

  $core.String get name => $_getS(1, '');
  set name($core.String v) { $_setString(1, v); }
  $core.bool hasName() => $_has(1);
  void clearName() => clearField(2);
}

class DeleteName extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteName', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'registrant', $pb.PbFieldType.OY)
    ..aOS(2, 'name')
    ..hasRequiredFields = false
  ;

  DeleteName._() : super();
  factory DeleteName() => create();
  factory DeleteName.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteName.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteName clone() => DeleteName()..mergeFromMessage(this);
  DeleteName copyWith(void Function(DeleteName) updates) => super.copyWith((message) => updates(message as DeleteName));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteName create() => DeleteName._();
  DeleteName createEmptyInstance() => create();
  static $pb.PbList<DeleteName> createRepeated() => $pb.PbList<DeleteName>();
  static DeleteName getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteName _defaultInstance;

  $core.List<$core.int> get registrant => $_getN(0);
  set registrant($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasRegistrant() => $_has(0);
  void clearRegistrant() => clearField(1);

  $core.String get name => $_getS(1, '');
  set name($core.String v) { $_setString(1, v); }
  $core.bool hasName() => $_has(1);
  void clearName() => clearField(2);
}

class Subscribe extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Subscribe', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'subscriber', $pb.PbFieldType.OY)
    ..aOS(2, 'identifier')
    ..aOS(3, 'topic')
    ..a<$core.int>(4, 'bucket', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, 'duration', $pb.PbFieldType.OU3)
    ..aOS(6, 'meta')
    ..hasRequiredFields = false
  ;

  Subscribe._() : super();
  factory Subscribe() => create();
  factory Subscribe.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Subscribe.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Subscribe clone() => Subscribe()..mergeFromMessage(this);
  Subscribe copyWith(void Function(Subscribe) updates) => super.copyWith((message) => updates(message as Subscribe));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Subscribe create() => Subscribe._();
  Subscribe createEmptyInstance() => create();
  static $pb.PbList<Subscribe> createRepeated() => $pb.PbList<Subscribe>();
  static Subscribe getDefault() => _defaultInstance ??= create()..freeze();
  static Subscribe _defaultInstance;

  $core.List<$core.int> get subscriber => $_getN(0);
  set subscriber($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasSubscriber() => $_has(0);
  void clearSubscriber() => clearField(1);

  $core.String get identifier => $_getS(1, '');
  set identifier($core.String v) { $_setString(1, v); }
  $core.bool hasIdentifier() => $_has(1);
  void clearIdentifier() => clearField(2);

  $core.String get topic => $_getS(2, '');
  set topic($core.String v) { $_setString(2, v); }
  $core.bool hasTopic() => $_has(2);
  void clearTopic() => clearField(3);

  @$core.Deprecated('This field is deprecated.')
  $core.int get bucket => $_get(3, 0);
  @$core.Deprecated('This field is deprecated.')
  set bucket($core.int v) { $_setUnsignedInt32(3, v); }
  @$core.Deprecated('This field is deprecated.')
  $core.bool hasBucket() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  void clearBucket() => clearField(4);

  $core.int get duration => $_get(4, 0);
  set duration($core.int v) { $_setUnsignedInt32(4, v); }
  $core.bool hasDuration() => $_has(4);
  void clearDuration() => clearField(5);

  $core.String get meta => $_getS(5, '');
  set meta($core.String v) { $_setString(5, v); }
  $core.bool hasMeta() => $_has(5);
  void clearMeta() => clearField(6);
}

class Unsubscribe extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Unsubscribe', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'subscriber', $pb.PbFieldType.OY)
    ..aOS(2, 'identifier')
    ..aOS(3, 'topic')
    ..hasRequiredFields = false
  ;

  Unsubscribe._() : super();
  factory Unsubscribe() => create();
  factory Unsubscribe.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Unsubscribe.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Unsubscribe clone() => Unsubscribe()..mergeFromMessage(this);
  Unsubscribe copyWith(void Function(Unsubscribe) updates) => super.copyWith((message) => updates(message as Unsubscribe));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Unsubscribe create() => Unsubscribe._();
  Unsubscribe createEmptyInstance() => create();
  static $pb.PbList<Unsubscribe> createRepeated() => $pb.PbList<Unsubscribe>();
  static Unsubscribe getDefault() => _defaultInstance ??= create()..freeze();
  static Unsubscribe _defaultInstance;

  $core.List<$core.int> get subscriber => $_getN(0);
  set subscriber($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasSubscriber() => $_has(0);
  void clearSubscriber() => clearField(1);

  $core.String get identifier => $_getS(1, '');
  set identifier($core.String v) { $_setString(1, v); }
  $core.bool hasIdentifier() => $_has(1);
  void clearIdentifier() => clearField(2);

  $core.String get topic => $_getS(2, '');
  set topic($core.String v) { $_setString(2, v); }
  $core.bool hasTopic() => $_has(2);
  void clearTopic() => clearField(3);
}

class TransferAsset extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TransferAsset', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'sender', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'recipient', $pb.PbFieldType.OY)
    ..aInt64(3, 'amount')
    ..hasRequiredFields = false
  ;

  TransferAsset._() : super();
  factory TransferAsset() => create();
  factory TransferAsset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransferAsset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TransferAsset clone() => TransferAsset()..mergeFromMessage(this);
  TransferAsset copyWith(void Function(TransferAsset) updates) => super.copyWith((message) => updates(message as TransferAsset));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransferAsset create() => TransferAsset._();
  TransferAsset createEmptyInstance() => create();
  static $pb.PbList<TransferAsset> createRepeated() => $pb.PbList<TransferAsset>();
  static TransferAsset getDefault() => _defaultInstance ??= create()..freeze();
  static TransferAsset _defaultInstance;

  $core.List<$core.int> get sender => $_getN(0);
  set sender($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasSender() => $_has(0);
  void clearSender() => clearField(1);

  $core.List<$core.int> get recipient => $_getN(1);
  set recipient($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasRecipient() => $_has(1);
  void clearRecipient() => clearField(2);

  Int64 get amount => $_getI64(2);
  set amount(Int64 v) { $_setInt64(2, v); }
  $core.bool hasAmount() => $_has(2);
  void clearAmount() => clearField(3);
}

class GenerateID extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GenerateID', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'publicKey', $pb.PbFieldType.OY)
    ..aInt64(2, 'registrationFee')
    ..hasRequiredFields = false
  ;

  GenerateID._() : super();
  factory GenerateID() => create();
  factory GenerateID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GenerateID clone() => GenerateID()..mergeFromMessage(this);
  GenerateID copyWith(void Function(GenerateID) updates) => super.copyWith((message) => updates(message as GenerateID));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenerateID create() => GenerateID._();
  GenerateID createEmptyInstance() => create();
  static $pb.PbList<GenerateID> createRepeated() => $pb.PbList<GenerateID>();
  static GenerateID getDefault() => _defaultInstance ??= create()..freeze();
  static GenerateID _defaultInstance;

  $core.List<$core.int> get publicKey => $_getN(0);
  set publicKey($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasPublicKey() => $_has(0);
  void clearPublicKey() => clearField(1);

  Int64 get registrationFee => $_getI64(1);
  set registrationFee(Int64 v) { $_setInt64(1, v); }
  $core.bool hasRegistrationFee() => $_has(1);
  void clearRegistrationFee() => clearField(2);
}

class NanoPay extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NanoPay', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'sender', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'recipient', $pb.PbFieldType.OY)
    ..a<Int64>(3, 'id', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..aInt64(4, 'amount')
    ..a<$core.int>(5, 'txnExpiration', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, 'nanoPayExpiration', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  NanoPay._() : super();
  factory NanoPay() => create();
  factory NanoPay.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NanoPay.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NanoPay clone() => NanoPay()..mergeFromMessage(this);
  NanoPay copyWith(void Function(NanoPay) updates) => super.copyWith((message) => updates(message as NanoPay));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NanoPay create() => NanoPay._();
  NanoPay createEmptyInstance() => create();
  static $pb.PbList<NanoPay> createRepeated() => $pb.PbList<NanoPay>();
  static NanoPay getDefault() => _defaultInstance ??= create()..freeze();
  static NanoPay _defaultInstance;

  $core.List<$core.int> get sender => $_getN(0);
  set sender($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasSender() => $_has(0);
  void clearSender() => clearField(1);

  $core.List<$core.int> get recipient => $_getN(1);
  set recipient($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasRecipient() => $_has(1);
  void clearRecipient() => clearField(2);

  Int64 get id => $_getI64(2);
  set id(Int64 v) { $_setInt64(2, v); }
  $core.bool hasId() => $_has(2);
  void clearId() => clearField(3);

  Int64 get amount => $_getI64(3);
  set amount(Int64 v) { $_setInt64(3, v); }
  $core.bool hasAmount() => $_has(3);
  void clearAmount() => clearField(4);

  $core.int get txnExpiration => $_get(4, 0);
  set txnExpiration($core.int v) { $_setUnsignedInt32(4, v); }
  $core.bool hasTxnExpiration() => $_has(4);
  void clearTxnExpiration() => clearField(5);

  $core.int get nanoPayExpiration => $_get(5, 0);
  set nanoPayExpiration($core.int v) { $_setUnsignedInt32(5, v); }
  $core.bool hasNanoPayExpiration() => $_has(5);
  void clearNanoPayExpiration() => clearField(6);
}

class IssueAsset extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IssueAsset', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'sender', $pb.PbFieldType.OY)
    ..aOS(2, 'name')
    ..aOS(3, 'symbol')
    ..aInt64(4, 'totalSupply')
    ..a<$core.int>(5, 'precision', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  IssueAsset._() : super();
  factory IssueAsset() => create();
  factory IssueAsset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IssueAsset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  IssueAsset clone() => IssueAsset()..mergeFromMessage(this);
  IssueAsset copyWith(void Function(IssueAsset) updates) => super.copyWith((message) => updates(message as IssueAsset));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IssueAsset create() => IssueAsset._();
  IssueAsset createEmptyInstance() => create();
  static $pb.PbList<IssueAsset> createRepeated() => $pb.PbList<IssueAsset>();
  static IssueAsset getDefault() => _defaultInstance ??= create()..freeze();
  static IssueAsset _defaultInstance;

  $core.List<$core.int> get sender => $_getN(0);
  set sender($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasSender() => $_has(0);
  void clearSender() => clearField(1);

  $core.String get name => $_getS(1, '');
  set name($core.String v) { $_setString(1, v); }
  $core.bool hasName() => $_has(1);
  void clearName() => clearField(2);

  $core.String get symbol => $_getS(2, '');
  set symbol($core.String v) { $_setString(2, v); }
  $core.bool hasSymbol() => $_has(2);
  void clearSymbol() => clearField(3);

  Int64 get totalSupply => $_getI64(3);
  set totalSupply(Int64 v) { $_setInt64(3, v); }
  $core.bool hasTotalSupply() => $_has(3);
  void clearTotalSupply() => clearField(4);

  $core.int get precision => $_get(4, 0);
  set precision($core.int v) { $_setUnsignedInt32(4, v); }
  $core.bool hasPrecision() => $_has(4);
  void clearPrecision() => clearField(5);
}

