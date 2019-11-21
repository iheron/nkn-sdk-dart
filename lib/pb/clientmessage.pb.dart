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
    ..e<CompressionType>(3, 'compressionType', $pb.PbFieldType.OE, defaultOrMaker: CompressionType.COMPRESSION_NONE, valueOf: CompressionType.valueOf, enumValues: CompressionType.values)
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
  @$core.pragma('dart2js:noInline')
  static ClientMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientMessage>(create);
  static ClientMessage _defaultInstance;

  @$pb.TagNumber(1)
  ClientMessageType get messageType => $_getN(0);
  @$pb.TagNumber(1)
  set messageType(ClientMessageType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageType() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get message => $_getN(1);
  @$pb.TagNumber(2)
  set message($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  CompressionType get compressionType => $_getN(2);
  @$pb.TagNumber(3)
  set compressionType(CompressionType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCompressionType() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompressionType() => clearField(3);
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
    ..p<$core.List<$core.int>>(8, 'payloads', $pb.PbFieldType.PY)
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
  @$core.pragma('dart2js:noInline')
  static OutboundMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OutboundMessage>(create);
  static OutboundMessage _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dest => $_getSZ(0);
  @$pb.TagNumber(1)
  set dest($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDest() => $_has(0);
  @$pb.TagNumber(1)
  void clearDest() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get payload => $_getN(1);
  @$pb.TagNumber(2)
  set payload($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPayload() => $_has(1);
  @$pb.TagNumber(2)
  void clearPayload() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get dests => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get maxHoldingSeconds => $_getIZ(3);
  @$pb.TagNumber(4)
  set maxHoldingSeconds($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaxHoldingSeconds() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxHoldingSeconds() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get nonce => $_getIZ(4);
  @$pb.TagNumber(5)
  set nonce($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNonce() => $_has(4);
  @$pb.TagNumber(5)
  void clearNonce() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get blockHash => $_getN(5);
  @$pb.TagNumber(6)
  set blockHash($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBlockHash() => $_has(5);
  @$pb.TagNumber(6)
  void clearBlockHash() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.List<$core.int>> get signatures => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$core.List<$core.int>> get payloads => $_getList(7);
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
  @$core.pragma('dart2js:noInline')
  static InboundMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InboundMessage>(create);
  static InboundMessage _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get src => $_getSZ(0);
  @$pb.TagNumber(1)
  set src($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSrc() => $_has(0);
  @$pb.TagNumber(1)
  void clearSrc() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get payload => $_getN(1);
  @$pb.TagNumber(2)
  set payload($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPayload() => $_has(1);
  @$pb.TagNumber(2)
  void clearPayload() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get prevSignature => $_getN(2);
  @$pb.TagNumber(3)
  set prevSignature($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrevSignature() => $_has(2);
  @$pb.TagNumber(3)
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
  @$core.pragma('dart2js:noInline')
  static Receipt getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Receipt>(create);
  static Receipt _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get prevSignature => $_getN(0);
  @$pb.TagNumber(1)
  set prevSignature($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPrevSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrevSignature() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);
}

