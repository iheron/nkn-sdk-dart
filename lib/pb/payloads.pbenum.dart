///
//  Generated code. Do not modify.
//  source: pb/payloads.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class PayloadType extends $pb.ProtobufEnum {
  static const PayloadType BINARY = PayloadType._(0, 'BINARY');
  static const PayloadType TEXT = PayloadType._(1, 'TEXT');
  static const PayloadType ACK = PayloadType._(2, 'ACK');

  static const $core.List<PayloadType> values = <PayloadType> [
    BINARY,
    TEXT,
    ACK,
  ];

  static final $core.Map<$core.int, PayloadType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PayloadType valueOf($core.int value) => _byValue[value];

  const PayloadType._($core.int v, $core.String n) : super(v, n);
}

