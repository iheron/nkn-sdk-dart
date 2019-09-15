///
//  Generated code. Do not modify.
//  source: pb/block.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class WinnerType extends $pb.ProtobufEnum {
  static const WinnerType GENESIS_SIGNER = WinnerType._(0, 'GENESIS_SIGNER');
  static const WinnerType TXN_SIGNER = WinnerType._(1, 'TXN_SIGNER');
  static const WinnerType BLOCK_SIGNER = WinnerType._(2, 'BLOCK_SIGNER');

  static const $core.List<WinnerType> values = <WinnerType> [
    GENESIS_SIGNER,
    TXN_SIGNER,
    BLOCK_SIGNER,
  ];

  static final $core.Map<$core.int, WinnerType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WinnerType valueOf($core.int value) => _byValue[value];

  const WinnerType._($core.int v, $core.String n) : super(v, n);
}

