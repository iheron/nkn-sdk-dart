///
//  Generated code. Do not modify.
//  source: pb/clientmessage.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'clientmessage.pbenum.dart';

export 'clientmessage.pbenum.dart';

class ClientMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ClientMessage', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..e<ClientMessageType>(1, 'messageType', $pb.PbFieldType.OE, defaultOrMaker: ClientMessageType.OUTBOUND_MESSAGE, valueOf: ClientMessageType.valueOf, enumValues: ClientMessageType.values)
    ..a<$core.List<$core.int>>(2, 'message', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ClientMessage._() : super();
  factory ClientMessage() => create();
  factory ClientMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ClientMessage clone() => ClientMessage()..mergeFromMessage(this);
  ClientMessage copyWith(void Function(ClientMessage) updates) => super.copyWith((message) => updates(message as ClientMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientMessage create() => ClientMessage._();
  ClientMessage createEmptyInstance() => create();
  static $pb.PbList<ClientMessage> createRepeated() => $pb.PbList<ClientMessage>();
  static ClientMessage getDefault() => _defaultInstance ??= create()..freeze();
  static ClientMessage _defaultInstance;

  ClientMessageType get messageType => $_getN(0);
  set messageType(ClientMessageType v) { setField(1, v); }
  $core.bool hasMessageType() => $_has(0);
  void clearMessageType() => clearField(1);

  $core.List<$core.int> get message => $_getN(1);
  set message($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);
}

class OutboundMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OutboundMessage', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'dest')
    ..a<$core.List<$core.int>>(2, 'payload', $pb.PbFieldType.OY)
    ..pPS(3, 'dests')
    ..a<$core.int>(4, 'maxHoldingSeconds', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, 'nonce', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(6, 'blockHash', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(7, 'signatures', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  OutboundMessage._() : super();
  factory OutboundMessage() => create();
  factory OutboundMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OutboundMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OutboundMessage clone() => OutboundMessage()..mergeFromMessage(this);
  OutboundMessage copyWith(void Function(OutboundMessage) updates) => super.copyWith((message) => updates(message as OutboundMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OutboundMessage create() => OutboundMessage._();
  OutboundMessage createEmptyInstance() => create();
  static $pb.PbList<OutboundMessage> createRepeated() => $pb.PbList<OutboundMessage>();
  static OutboundMessage getDefault() => _defaultInstance ??= create()..freeze();
  static OutboundMessage _defaultInstance;

  $core.String get dest => $_getS(0, '');
  set dest($core.String v) { $_setString(0, v); }
  $core.bool hasDest() => $_has(0);
  void clearDest() => clearField(1);

  $core.List<$core.int> get payload => $_getN(1);
  set payload($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasPayload() => $_has(1);
  void clearPayload() => clearField(2);

  $core.List<$core.String> get dests => $_getList(2);

  $core.int get maxHoldingSeconds => $_get(3, 0);
  set maxHoldingSeconds($core.int v) { $_setUnsignedInt32(3, v); }
  $core.bool hasMaxHoldingSeconds() => $_has(3);
  void clearMaxHoldingSeconds() => clearField(4);

  $core.int get nonce => $_get(4, 0);
  set nonce($core.int v) { $_setUnsignedInt32(4, v); }
  $core.bool hasNonce() => $_has(4);
  void clearNonce() => clearField(5);

  $core.List<$core.int> get blockHash => $_getN(5);
  set blockHash($core.List<$core.int> v) { $_setBytes(5, v); }
  $core.bool hasBlockHash() => $_has(5);
  void clearBlockHash() => clearField(6);

  $core.List<$core.List<$core.int>> get signatures => $_getList(6);
}

class InboundMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InboundMessage', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'src')
    ..a<$core.List<$core.int>>(2, 'payload', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'prevSignature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  InboundMessage._() : super();
  factory InboundMessage() => create();
  factory InboundMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InboundMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  InboundMessage clone() => InboundMessage()..mergeFromMessage(this);
  InboundMessage copyWith(void Function(InboundMessage) updates) => super.copyWith((message) => updates(message as InboundMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InboundMessage create() => InboundMessage._();
  InboundMessage createEmptyInstance() => create();
  static $pb.PbList<InboundMessage> createRepeated() => $pb.PbList<InboundMessage>();
  static InboundMessage getDefault() => _defaultInstance ??= create()..freeze();
  static InboundMessage _defaultInstance;

  $core.String get src => $_getS(0, '');
  set src($core.String v) { $_setString(0, v); }
  $core.bool hasSrc() => $_has(0);
  void clearSrc() => clearField(1);

  $core.List<$core.int> get payload => $_getN(1);
  set payload($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasPayload() => $_has(1);
  void clearPayload() => clearField(2);

  $core.List<$core.int> get prevSignature => $_getN(2);
  set prevSignature($core.List<$core.int> v) { $_setBytes(2, v); }
  $core.bool hasPrevSignature() => $_has(2);
  void clearPrevSignature() => clearField(3);
}

class Receipt extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Receipt', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'prevSignature', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'signature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Receipt._() : super();
  factory Receipt() => create();
  factory Receipt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Receipt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Receipt clone() => Receipt()..mergeFromMessage(this);
  Receipt copyWith(void Function(Receipt) updates) => super.copyWith((message) => updates(message as Receipt));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Receipt create() => Receipt._();
  Receipt createEmptyInstance() => create();
  static $pb.PbList<Receipt> createRepeated() => $pb.PbList<Receipt>();
  static Receipt getDefault() => _defaultInstance ??= create()..freeze();
  static Receipt _defaultInstance;

  $core.List<$core.int> get prevSignature => $_getN(0);
  set prevSignature($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasPrevSignature() => $_has(0);
  void clearPrevSignature() => clearField(1);

  $core.List<$core.int> get signature => $_getN(1);
  set signature($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasSignature() => $_has(1);
  void clearSignature() => clearField(2);
}

