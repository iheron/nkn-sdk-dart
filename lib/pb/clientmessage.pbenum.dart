///
//  Generated code. Do not modify.
//  source: pb/clientmessage.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ClientMessageType extends $pb.ProtobufEnum {
  static const ClientMessageType OUTBOUND_MESSAGE = ClientMessageType._(0, 'OUTBOUND_MESSAGE');
  static const ClientMessageType INBOUND_MESSAGE = ClientMessageType._(1, 'INBOUND_MESSAGE');
  static const ClientMessageType RECEIPT = ClientMessageType._(2, 'RECEIPT');

  static const $core.List<ClientMessageType> values = <ClientMessageType> [
    OUTBOUND_MESSAGE,
    INBOUND_MESSAGE,
    RECEIPT,
  ];

  static final $core.Map<$core.int, ClientMessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ClientMessageType valueOf($core.int value) => _byValue[value];

  const ClientMessageType._($core.int v, $core.String n) : super(v, n);
}

class CompressionType extends $pb.ProtobufEnum {
  static const CompressionType COMPRESSION_NONE = CompressionType._(0, 'COMPRESSION_NONE');
  static const CompressionType COMPRESSION_ZLIB = CompressionType._(1, 'COMPRESSION_ZLIB');

  static const $core.List<CompressionType> values = <CompressionType> [
    COMPRESSION_NONE,
    COMPRESSION_ZLIB,
  ];

  static final $core.Map<$core.int, CompressionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CompressionType valueOf($core.int value) => _byValue[value];

  const CompressionType._($core.int v, $core.String n) : super(v, n);
}

