///
//  Generated code. Do not modify.
//  source: pb/node.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'node.pbenum.dart';

class NodeData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NodeData', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'publicKey', $pb.PbFieldType.OY)
    ..a<$core.int>(2, 'websocketPort', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'jsonRpcPort', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, 'protocolVersion', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  NodeData._() : super();
  factory NodeData() => create();
  factory NodeData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodeData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NodeData clone() => NodeData()..mergeFromMessage(this);
  NodeData copyWith(void Function(NodeData) updates) => super.copyWith((message) => updates(message as NodeData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodeData create() => NodeData._();
  NodeData createEmptyInstance() => create();
  static $pb.PbList<NodeData> createRepeated() => $pb.PbList<NodeData>();
  @$core.pragma('dart2js:noInline')
  static NodeData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeData>(create);
  static NodeData _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get publicKey => $_getN(0);
  @$pb.TagNumber(1)
  set publicKey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPublicKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get websocketPort => $_getIZ(1);
  @$pb.TagNumber(2)
  set websocketPort($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWebsocketPort() => $_has(1);
  @$pb.TagNumber(2)
  void clearWebsocketPort() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get jsonRpcPort => $_getIZ(2);
  @$pb.TagNumber(3)
  set jsonRpcPort($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasJsonRpcPort() => $_has(2);
  @$pb.TagNumber(3)
  void clearJsonRpcPort() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get protocolVersion => $_getIZ(3);
  @$pb.TagNumber(4)
  set protocolVersion($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProtocolVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearProtocolVersion() => clearField(4);
}

