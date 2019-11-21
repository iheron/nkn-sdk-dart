///
//  Generated code. Do not modify.
//  source: pb/block.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'transaction.pb.dart' as $0;

import 'block.pbenum.dart';

export 'block.pbenum.dart';

class UnsignedHeader extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UnsignedHeader', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'version', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(2, 'prevBlockHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'transactionsRoot', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, 'stateRoot', $pb.PbFieldType.OY)
    ..aInt64(5, 'timestamp')
    ..a<$core.int>(6, 'height', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(7, 'randomBeacon', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(8, 'winnerHash', $pb.PbFieldType.OY)
    ..e<WinnerType>(9, 'winnerType', $pb.PbFieldType.OE, defaultOrMaker: WinnerType.GENESIS_SIGNER, valueOf: WinnerType.valueOf, enumValues: WinnerType.values)
    ..a<$core.List<$core.int>>(10, 'signerPk', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(11, 'signerId', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  UnsignedHeader._() : super();
  factory UnsignedHeader() => create();
  factory UnsignedHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnsignedHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UnsignedHeader clone() => UnsignedHeader()..mergeFromMessage(this);
  UnsignedHeader copyWith(void Function(UnsignedHeader) updates) => super.copyWith((message) => updates(message as UnsignedHeader));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnsignedHeader create() => UnsignedHeader._();
  UnsignedHeader createEmptyInstance() => create();
  static $pb.PbList<UnsignedHeader> createRepeated() => $pb.PbList<UnsignedHeader>();
  @$core.pragma('dart2js:noInline')
  static UnsignedHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnsignedHeader>(create);
  static UnsignedHeader _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get prevBlockHash => $_getN(1);
  @$pb.TagNumber(2)
  set prevBlockHash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrevBlockHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrevBlockHash() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get transactionsRoot => $_getN(2);
  @$pb.TagNumber(3)
  set transactionsRoot($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTransactionsRoot() => $_has(2);
  @$pb.TagNumber(3)
  void clearTransactionsRoot() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get stateRoot => $_getN(3);
  @$pb.TagNumber(4)
  set stateRoot($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStateRoot() => $_has(3);
  @$pb.TagNumber(4)
  void clearStateRoot() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get timestamp => $_getI64(4);
  @$pb.TagNumber(5)
  set timestamp($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimestamp() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get height => $_getIZ(5);
  @$pb.TagNumber(6)
  set height($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHeight() => $_has(5);
  @$pb.TagNumber(6)
  void clearHeight() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get randomBeacon => $_getN(6);
  @$pb.TagNumber(7)
  set randomBeacon($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRandomBeacon() => $_has(6);
  @$pb.TagNumber(7)
  void clearRandomBeacon() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get winnerHash => $_getN(7);
  @$pb.TagNumber(8)
  set winnerHash($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasWinnerHash() => $_has(7);
  @$pb.TagNumber(8)
  void clearWinnerHash() => clearField(8);

  @$pb.TagNumber(9)
  WinnerType get winnerType => $_getN(8);
  @$pb.TagNumber(9)
  set winnerType(WinnerType v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasWinnerType() => $_has(8);
  @$pb.TagNumber(9)
  void clearWinnerType() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.int> get signerPk => $_getN(9);
  @$pb.TagNumber(10)
  set signerPk($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSignerPk() => $_has(9);
  @$pb.TagNumber(10)
  void clearSignerPk() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.int> get signerId => $_getN(10);
  @$pb.TagNumber(11)
  set signerId($core.List<$core.int> v) { $_setBytes(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSignerId() => $_has(10);
  @$pb.TagNumber(11)
  void clearSignerId() => clearField(11);
}

class Header extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Header', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<UnsignedHeader>(1, 'unsignedHeader', subBuilder: UnsignedHeader.create)
    ..a<$core.List<$core.int>>(2, 'signature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Header._() : super();
  factory Header() => create();
  factory Header.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Header.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Header clone() => Header()..mergeFromMessage(this);
  Header copyWith(void Function(Header) updates) => super.copyWith((message) => updates(message as Header));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Header create() => Header._();
  Header createEmptyInstance() => create();
  static $pb.PbList<Header> createRepeated() => $pb.PbList<Header>();
  @$core.pragma('dart2js:noInline')
  static Header getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Header>(create);
  static Header _defaultInstance;

  @$pb.TagNumber(1)
  UnsignedHeader get unsignedHeader => $_getN(0);
  @$pb.TagNumber(1)
  set unsignedHeader(UnsignedHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnsignedHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnsignedHeader() => clearField(1);
  @$pb.TagNumber(1)
  UnsignedHeader ensureUnsignedHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);
}

class Block extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Block', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..pc<$0.Transaction>(2, 'transactions', $pb.PbFieldType.PM, subBuilder: $0.Transaction.create)
    ..hasRequiredFields = false
  ;

  Block._() : super();
  factory Block() => create();
  factory Block.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Block.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Block clone() => Block()..mergeFromMessage(this);
  Block copyWith(void Function(Block) updates) => super.copyWith((message) => updates(message as Block));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Block create() => Block._();
  Block createEmptyInstance() => create();
  static $pb.PbList<Block> createRepeated() => $pb.PbList<Block>();
  @$core.pragma('dart2js:noInline')
  static Block getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Block>(create);
  static Block _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$0.Transaction> get transactions => $_getList(1);
}

