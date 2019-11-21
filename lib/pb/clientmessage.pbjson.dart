///
//  Generated code. Do not modify.
//  source: pb/clientmessage.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const ClientMessageType$json = const {
  '1': 'ClientMessageType',
  '2': const [
    const {'1': 'OUTBOUND_MESSAGE', '2': 0},
    const {'1': 'INBOUND_MESSAGE', '2': 1},
    const {'1': 'RECEIPT', '2': 2},
  ],
};

const CompressionType$json = const {
  '1': 'CompressionType',
  '2': const [
    const {'1': 'COMPRESSION_NONE', '2': 0},
    const {'1': 'COMPRESSION_ZLIB', '2': 1},
  ],
};

const ClientMessage$json = const {
  '1': 'ClientMessage',
  '2': const [
    const {'1': 'message_type', '3': 1, '4': 1, '5': 14, '6': '.pb.ClientMessageType', '10': 'messageType'},
    const {'1': 'message', '3': 2, '4': 1, '5': 12, '10': 'message'},
    const {'1': 'compression_type', '3': 3, '4': 1, '5': 14, '6': '.pb.CompressionType', '10': 'compressionType'},
  ],
};

const OutboundMessage$json = const {
  '1': 'OutboundMessage',
  '2': const [
    const {'1': 'dest', '3': 1, '4': 1, '5': 9, '10': 'dest'},
    const {'1': 'payload', '3': 2, '4': 1, '5': 12, '10': 'payload'},
    const {'1': 'dests', '3': 3, '4': 3, '5': 9, '10': 'dests'},
    const {'1': 'max_holding_seconds', '3': 4, '4': 1, '5': 13, '10': 'maxHoldingSeconds'},
    const {'1': 'nonce', '3': 5, '4': 1, '5': 13, '10': 'nonce'},
    const {'1': 'block_hash', '3': 6, '4': 1, '5': 12, '10': 'blockHash'},
    const {'1': 'signatures', '3': 7, '4': 3, '5': 12, '10': 'signatures'},
    const {'1': 'payloads', '3': 8, '4': 3, '5': 12, '10': 'payloads'},
  ],
};

const InboundMessage$json = const {
  '1': 'InboundMessage',
  '2': const [
    const {'1': 'src', '3': 1, '4': 1, '5': 9, '10': 'src'},
    const {'1': 'payload', '3': 2, '4': 1, '5': 12, '10': 'payload'},
    const {'1': 'prev_signature', '3': 3, '4': 1, '5': 12, '10': 'prevSignature'},
  ],
};

const Receipt$json = const {
  '1': 'Receipt',
  '2': const [
    const {'1': 'prev_signature', '3': 1, '4': 1, '5': 12, '10': 'prevSignature'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
  ],
};

