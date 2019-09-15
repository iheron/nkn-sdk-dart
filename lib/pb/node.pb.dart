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
  static NodeData getDefault() => _defaultInstance ??= create()..freeze();
  static NodeData _defaultInstance;

  $core.List<$core.int> get publicKey => $_getN(0);
  set publicKey($core.List<$core.int> v) { $_setBytes(0, v); }
  $core.bool hasPublicKey() => $_has(0);
  void clearPublicKey() => clearField(1);

  $core.int get websocketPort => $_get(1, 0);
  set websocketPort($core.int v) { $_setUnsignedInt32(1, v); }
  $core.bool hasWebsocketPort() => $_has(1);
  void clearWebsocketPort() => clearField(2);

  $core.int get jsonRpcPort => $_get(2, 0);
  set jsonRpcPort($core.int v) { $_setUnsignedInt32(2, v); }
  $core.bool hasJsonRpcPort() => $_has(2);
  void clearJsonRpcPort() => clearField(3);

  $core.int get protocolVersion => $_get(3, 0);
  set protocolVersion($core.int v) { $_setUnsignedInt32(3, v); }
  $core.bool hasProtocolVersion() => $_has(3);
  void clearProtocolVersion() => clearField(4);
}

