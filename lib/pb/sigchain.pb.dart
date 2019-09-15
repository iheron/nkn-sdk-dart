///
//  Generated code. Do not modify.
//  source: pb/sigchain.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'sigchain.pbenum.dart';

export 'sigchain.pbenum.dart';

class SigChainElem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SigChainElem', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'id', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'nextPubkey', $pb.PbFieldType.OY)
    ..aOB(3, 'mining')
    ..a<$core.List<$core.int>>(4, 'signature', $pb.PbFieldType.OY)
    ..e<SigAlgo>(5, 'sigAlgo', $pb.PbFieldType.OE, defaultOrMaker: SigAlgo.SIGNATURE, valueOf: SigAlgo.valueOf, enumValues: SigAlgo.values)
    ..a<$core.List<$core.int>>(6, 'vrf', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(7, 'proof', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SigChainElem._() : super();
  factory SigChainElem() => create();
  factory SigChainElem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SigChainElem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SigChainElem clone() => SigChainElem()..mergeFromMessage(this);
  SigChainElem copyWith(void Function(SigChainElem) updates) => super.copyWith((message) => updates(message as SigChainElem));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SigChainElem create() => SigChainElem._();
  SigChainElem createEmptyInstance() => create();
  static $pb.PbList<SigChainElem> createRepeated() => $pb.PbList<SigChainElem>();
  static SigChainElem getDefault() => _defaultInstance ??= create()..freeze();
  static SigChainElem _defaultInstance;

  $core.List<$core.int> get id => $_getN(0);
  set id($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.List<$core.int> get nextPubkey => $_getN(1);
  set nextPubkey($core.List<$core.int> v) { $_setBytes(1, v); }
  $core.bool hasNextPubkey() => $_has(1);
  void clearNextPubkey() => clearField(2);

  $core.bool get mining => $_get(2, false);
  set mining($core.bool v) { $_setBool(2, v); }
  $core.bool hasMining() => $_has(2);
  void clearMining() => clearField(3);

  $core.List<$core.int> get signature => $_getN(3);
  set signature($core.List<$core.int> v) { $_setBytes(3, v); }
  $core.bool hasSignature() => $_has(3);
  void clearSignature() => clearField(4);

  SigAlgo get sigAlgo => $_getN(4);
  set sigAlgo(SigAlgo v) { setField(5, v); }
  $core.bool hasSigAlgo() => $_has(4);
  void clearSigAlgo() => clearField(5);

  $core.List<$core.int> get vrf => $_getN(5);
  set vrf($core.List<$core.int> v) { $_setBytes(5, v); }
  $core.bool hasVrf() => $_has(5);
  void clearVrf() => clearField(6);

  $core.List<$core.int> get proof => $_getN(6);
  set proof($core.List<$core.int> v) { $_setBytes(6, v); }
  $core.bool hasProof() => $_has(6);
  void clearProof() => clearField(7);
}

class SigChain extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SigChain', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'nonce', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'dataSize', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(3, 'blockHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, 'srcId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, 'srcPubkey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(6, 'destId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(7, 'destPubkey', $pb.PbFieldType.OY)
    ..pc<SigChainElem>(8, 'elems', $pb.PbFieldType.PM, subBuilder: SigChainElem.create)
    ..hasRequiredFields = false
  ;

  SigChain._() : super();
  factory SigChain() => create();
  factory SigChain.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SigChain.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SigChain clone() => SigChain()..mergeFromMessage(this);
  SigChain copyWith(void Function(SigChain) updates) => super.copyWith((message) => updates(message as SigChain));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SigChain create() => SigChain._();
  SigChain createEmptyInstance() => create();
  static $pb.PbList<SigChain> createRepeated() => $pb.PbList<SigChain>();
  static SigChain getDefault() => _defaultInstance ??= create()..freeze();
  static SigChain _defaultInstance;

  $core.int get nonce => $_get(0, 0);
  set nonce($core.int v) { $_setUnsignedInt32(0, v); }
  $core.bool hasNonce() => $_has(0);
  void clearNonce() => clearField(1);

  $core.int get dataSize => $_get(1, 0);
  set dataSize($core.int v) { $_setUnsignedInt32(1, v); }
  $core.bool hasDataSize() => $_has(1);
  void clearDataSize() => clearField(2);

  $core.List<$core.int> get blockHash => $_getN(2);
  set blockHash($core.List<$core.int> v) { $_setBytes(2, v); }
  $core.bool hasBlockHash() => $_has(2);
  void clearBlockHash() => clearField(3);

  $core.List<$core.int> get srcId => $_getN(3);
  set srcId($core.List<$core.int> v) { $_setBytes(3, v); }
  $core.bool hasSrcId() => $_has(3);
  void clearSrcId() => clearField(4);

  $core.List<$core.int> get srcPubkey => $_getN(4);
  set srcPubkey($core.List<$core.int> v) { $_setBytes(4, v); }
  $core.bool hasSrcPubkey() => $_has(4);
  void clearSrcPubkey() => clearField(5);

  $core.List<$core.int> get destId => $_getN(5);
  set destId($core.List<$core.int> v) { $_setBytes(5, v); }
  $core.bool hasDestId() => $_has(5);
  void clearDestId() => clearField(6);

  $core.List<$core.int> get destPubkey => $_getN(6);
  set destPubkey($core.List<$core.int> v) { $_setBytes(6, v); }
  $core.bool hasDestPubkey() => $_has(6);
  void clearDestPubkey() => clearField(7);

  $core.List<SigChainElem> get elems => $_getList(7);
}

