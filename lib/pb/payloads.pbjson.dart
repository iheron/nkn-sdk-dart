///
//  Generated code. Do not modify.
//  source: pb/payloads.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const PayloadType$json = const {
  '1': 'PayloadType',
  '2': const [
    const {'1': 'BINARY', '2': 0},
    const {'1': 'TEXT', '2': 1},
    const {'1': 'ACK', '2': 2},
  ],
};

const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 12, '10': 'payload'},
    const {'1': 'encrypted', '3': 2, '4': 1, '5': 8, '10': 'encrypted'},
    const {'1': 'nonce', '3': 3, '4': 1, '5': 12, '10': 'nonce'},
  ],
};

const Payload$json = const {
  '1': 'Payload',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.PayloadType', '10': 'type'},
    const {'1': 'pid', '3': 2, '4': 1, '5': 12, '10': 'pid'},
    const {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'reply_to_pid', '3': 4, '4': 1, '5': 12, '10': 'replyToPid'},
    const {'1': 'no_ack', '3': 5, '4': 1, '5': 8, '10': 'noAck'},
  ],
};

const TextData$json = const {
  '1': 'TextData',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
  ],
};

