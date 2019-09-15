///
//  Generated code. Do not modify.
//  source: pb/node.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class SyncState extends $pb.ProtobufEnum {
  static const SyncState WAIT_FOR_SYNCING = SyncState._(0, 'WAIT_FOR_SYNCING');
  static const SyncState SYNC_STARTED = SyncState._(1, 'SYNC_STARTED');
  static const SyncState SYNC_FINISHED = SyncState._(2, 'SYNC_FINISHED');
  static const SyncState PERSIST_FINISHED = SyncState._(3, 'PERSIST_FINISHED');

  static const $core.List<SyncState> values = <SyncState> [
    WAIT_FOR_SYNCING,
    SYNC_STARTED,
    SYNC_FINISHED,
    PERSIST_FINISHED,
  ];

  static final $core.Map<$core.int, SyncState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SyncState valueOf($core.int value) => _byValue[value];

  const SyncState._($core.int v, $core.String n) : super(v, n);
}

