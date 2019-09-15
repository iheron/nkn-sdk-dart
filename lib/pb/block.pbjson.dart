///
//  Generated code. Do not modify.
//  source: pb/block.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const WinnerType$json = const {
  '1': 'WinnerType',
  '2': const [
    const {'1': 'GENESIS_SIGNER', '2': 0},
    const {'1': 'TXN_SIGNER', '2': 1},
    const {'1': 'BLOCK_SIGNER', '2': 2},
  ],
};

const UnsignedHeader$json = const {
  '1': 'UnsignedHeader',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 13, '10': 'version'},
    const {'1': 'prev_block_hash', '3': 2, '4': 1, '5': 12, '10': 'prevBlockHash'},
    const {'1': 'transactions_root', '3': 3, '4': 1, '5': 12, '10': 'transactionsRoot'},
    const {'1': 'state_root', '3': 4, '4': 1, '5': 12, '10': 'stateRoot'},
    const {'1': 'timestamp', '3': 5, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'height', '3': 6, '4': 1, '5': 13, '10': 'height'},
    const {'1': 'random_beacon', '3': 7, '4': 1, '5': 12, '10': 'randomBeacon'},
    const {'1': 'winner_hash', '3': 8, '4': 1, '5': 12, '10': 'winnerHash'},
    const {'1': 'winner_type', '3': 9, '4': 1, '5': 14, '6': '.pb.WinnerType', '10': 'winnerType'},
    const {'1': 'signer_pk', '3': 10, '4': 1, '5': 12, '10': 'signerPk'},
    const {'1': 'signer_id', '3': 11, '4': 1, '5': 12, '10': 'signerId'},
  ],
};

const Header$json = const {
  '1': 'Header',
  '2': const [
    const {'1': 'unsigned_header', '3': 1, '4': 1, '5': 11, '6': '.pb.UnsignedHeader', '10': 'unsignedHeader'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
  ],
};

const Block$json = const {
  '1': 'Block',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'transactions', '3': 2, '4': 3, '5': 11, '6': '.pb.Transaction', '10': 'transactions'},
  ],
};

