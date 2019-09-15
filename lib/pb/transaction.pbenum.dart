///
//  Generated code. Do not modify.
//  source: pb/transaction.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class PayloadType extends $pb.ProtobufEnum {
  static const PayloadType COINBASE_TYPE = PayloadType._(0, 'COINBASE_TYPE');
  static const PayloadType TRANSFER_ASSET_TYPE = PayloadType._(1, 'TRANSFER_ASSET_TYPE');
  static const PayloadType SIG_CHAIN_TXN_TYPE = PayloadType._(2, 'SIG_CHAIN_TXN_TYPE');
  static const PayloadType REGISTER_NAME_TYPE = PayloadType._(3, 'REGISTER_NAME_TYPE');
  static const PayloadType TRANSFER_NAME_TYPE = PayloadType._(4, 'TRANSFER_NAME_TYPE');
  static const PayloadType DELETE_NAME_TYPE = PayloadType._(5, 'DELETE_NAME_TYPE');
  static const PayloadType SUBSCRIBE_TYPE = PayloadType._(6, 'SUBSCRIBE_TYPE');
  static const PayloadType UNSUBSCRIBE_TYPE = PayloadType._(7, 'UNSUBSCRIBE_TYPE');
  static const PayloadType GENERATE_ID_TYPE = PayloadType._(8, 'GENERATE_ID_TYPE');
  static const PayloadType NANO_PAY_TYPE = PayloadType._(9, 'NANO_PAY_TYPE');
  static const PayloadType ISSUE_ASSET_TYPE = PayloadType._(10, 'ISSUE_ASSET_TYPE');

  static const $core.List<PayloadType> values = <PayloadType> [
    COINBASE_TYPE,
    TRANSFER_ASSET_TYPE,
    SIG_CHAIN_TXN_TYPE,
    REGISTER_NAME_TYPE,
    TRANSFER_NAME_TYPE,
    DELETE_NAME_TYPE,
    SUBSCRIBE_TYPE,
    UNSUBSCRIBE_TYPE,
    GENERATE_ID_TYPE,
    NANO_PAY_TYPE,
    ISSUE_ASSET_TYPE,
  ];

  static final $core.Map<$core.int, PayloadType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PayloadType valueOf($core.int value) => _byValue[value];

  const PayloadType._($core.int v, $core.String n) : super(v, n);
}

