///
//  Generated code. Do not modify.
//  source: pb/block.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart';
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
  static UnsignedHeader getDefault() => _defaultInstance ??= create()..freeze();
  static UnsignedHeader _defaultInstance;

  $core.int get version => $_get(0, 0);
  set version($core.int v) { $_setUnsignedInt32(0, v); }
  $core.bool hasVersion() => $_has(0);
  void clearVersion() => clearField(1);

  $core.List<$core.int> get prevBlockHash => $_getN(1);
  set prevBlockHash($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasPrevBlockHash() => $_has(1);
  void clearPrevBlockHash() => clearField(2);

  $core.List<$core.int> get transactionsRoot => $_getN(2);
  set transactionsRoot($core.List<$core.int> v) { $_setBytes(2, v); }
  $core.bool hasTransactionsRoot() => $_has(2);
  void clearTransactionsRoot() => clearField(3);

  $core.List<$core.int> get stateRoot => $_getN(3);
  set stateRoot($core.List<$core.int> v) { $_setBytes(3, v); }
  $core.bool hasStateRoot() => $_has(3);
  void clearStateRoot() => clearField(4);

  Int64 get timestamp => $_getI64(4);
  set timestamp(Int64 v) { $_setInt64(4, v); }
  $core.bool hasTimestamp() => $_has(4);
  void clearTimestamp() => clearField(5);

  $core.int get height => $_get(5, 0);
  set height($core.int v) { $_setUnsignedInt32(5, v); }
  $core.bool hasHeight() => $_has(5);
  void clearHeight() => clearField(6);

  $core.List<$core.int> get randomBeacon => $_getN(6);
  set randomBeacon($core.List<$core.int> v) { $_setBytes(6, v); }
  $core.bool hasRandomBeacon() => $_has(6);
  void clearRandomBeacon() => clearField(7);

  $core.List<$core.int> get winnerHash => $_getN(7);
  set winnerHash($core.List<$core.int> v) { $_setBytes(7, v); }
  $core.bool hasWinnerHash() => $_has(7);
  void clearWinnerHash() => clearField(8);

  WinnerType get winnerType => $_getN(8);
  set winnerType(WinnerType v) { setField(9, v); }
  $core.bool hasWinnerType() => $_has(8);
  void clearWinnerType() => clearField(9);

  $core.List<$core.int> get signerPk => $_getN(9);
  set signerPk($core.List<$core.int> v) { $_setBytes(9, v); }
  $core.bool hasSignerPk() => $_has(9);
  void clearSignerPk() => clearField(10);

  $core.List<$core.int> get signerId => $_getN(10);
  set signerId($core.List<$core.int> v) { $_setBytes(10, v); }
  $core.bool hasSignerId() => $_has(10);
  void clearSignerId() => clearField(11);
}

class Header extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Header', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<UnsignedHeader>(1, 'unsignedHeader', $pb.PbFieldType.OM, defaultOrMaker: UnsignedHeader.getDefault, subBuilder: UnsignedHeader.create)
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
  static Header getDefault() => _defaultInstance ??= create()..freeze();
  static Header _defaultInstance;

  UnsignedHeader get unsignedHeader => $_getN(0);
  set unsignedHeader(UnsignedHeader v) { setField(1, v); }
  $core.bool hasUnsignedHeader() => $_has(0);
  void clearUnsignedHeader() => clearField(1);

  $core.List<$core.int> get signature => $_getN(1);
  set signature($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasSignature() => $_has(1);
  void clearSignature() => clearField(2);
}

class Block extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Block', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<Header>(1, 'header', $pb.PbFieldType.OM, defaultOrMaker: Header.getDefault, subBuilder: Header.create)
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
  static Block getDefault() => _defaultInstance ??= create()..freeze();
  static Block _defaultInstance;

  Header get header => $_getN(0);
  set header(Header v) { setField(1, v); }
  $core.bool hasHeader() => $_has(0);
  void clearHeader() => clearField(1);

  $core.List<$0.Transaction> get transactions => $_getList(1);
}

