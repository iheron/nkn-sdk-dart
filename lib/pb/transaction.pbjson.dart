///
//  Generated code. Do not modify.
//  source: pb/transaction.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const PayloadType$json = const {
  '1': 'PayloadType',
  '2': const [
    const {'1': 'COINBASE_TYPE', '2': 0},
    const {'1': 'TRANSFER_ASSET_TYPE', '2': 1},
    const {'1': 'SIG_CHAIN_TXN_TYPE', '2': 2},
    const {'1': 'REGISTER_NAME_TYPE', '2': 3},
    const {'1': 'TRANSFER_NAME_TYPE', '2': 4},
    const {'1': 'DELETE_NAME_TYPE', '2': 5},
    const {'1': 'SUBSCRIBE_TYPE', '2': 6},
    const {'1': 'UNSUBSCRIBE_TYPE', '2': 7},
    const {'1': 'GENERATE_ID_TYPE', '2': 8},
    const {'1': 'NANO_PAY_TYPE', '2': 9},
    const {'1': 'ISSUE_ASSET_TYPE', '2': 10},
  ],
};

const UnsignedTx$json = const {
  '1': 'UnsignedTx',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.pb.Payload', '10': 'payload'},
    const {'1': 'nonce', '3': 2, '4': 1, '5': 4, '10': 'nonce'},
    const {'1': 'fee', '3': 3, '4': 1, '5': 3, '10': 'fee'},
    const {'1': 'attributes', '3': 4, '4': 1, '5': 12, '10': 'attributes'},
  ],
};

const Transaction$json = const {
  '1': 'Transaction',
  '2': const [
    const {'1': 'unsigned_tx', '3': 1, '4': 1, '5': 11, '6': '.pb.UnsignedTx', '10': 'unsignedTx'},
    const {'1': 'programs', '3': 2, '4': 3, '5': 11, '6': '.pb.Program', '10': 'programs'},
  ],
};

const Program$json = const {
  '1': 'Program',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 12, '10': 'code'},
    const {'1': 'parameter', '3': 2, '4': 1, '5': 12, '10': 'parameter'},
  ],
};

const Payload$json = const {
  '1': 'Payload',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.pb.PayloadType', '10': 'type'},
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
  ],
};

const Coinbase$json = const {
  '1': 'Coinbase',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 12, '10': 'sender'},
    const {'1': 'recipient', '3': 2, '4': 1, '5': 12, '10': 'recipient'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 3, '10': 'amount'},
  ],
};

const SigChainTxn$json = const {
  '1': 'SigChainTxn',
  '2': const [
    const {'1': 'sigChain', '3': 1, '4': 1, '5': 12, '10': 'sigChain'},
    const {'1': 'submitter', '3': 2, '4': 1, '5': 12, '10': 'submitter'},
  ],
};

const RegisterName$json = const {
  '1': 'RegisterName',
  '2': const [
    const {'1': 'registrant', '3': 1, '4': 1, '5': 12, '10': 'registrant'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

const DeleteName$json = const {
  '1': 'DeleteName',
  '2': const [
    const {'1': 'registrant', '3': 1, '4': 1, '5': 12, '10': 'registrant'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

const Subscribe$json = const {
  '1': 'Subscribe',
  '2': const [
    const {'1': 'subscriber', '3': 1, '4': 1, '5': 12, '10': 'subscriber'},
    const {'1': 'identifier', '3': 2, '4': 1, '5': 9, '10': 'identifier'},
    const {'1': 'topic', '3': 3, '4': 1, '5': 9, '10': 'topic'},
    const {
      '1': 'bucket',
      '3': 4,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'bucket',
    },
    const {'1': 'duration', '3': 5, '4': 1, '5': 13, '10': 'duration'},
    const {'1': 'meta', '3': 6, '4': 1, '5': 9, '10': 'meta'},
  ],
};

const Unsubscribe$json = const {
  '1': 'Unsubscribe',
  '2': const [
    const {'1': 'subscriber', '3': 1, '4': 1, '5': 12, '10': 'subscriber'},
    const {'1': 'identifier', '3': 2, '4': 1, '5': 9, '10': 'identifier'},
    const {'1': 'topic', '3': 3, '4': 1, '5': 9, '10': 'topic'},
  ],
};

const TransferAsset$json = const {
  '1': 'TransferAsset',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 12, '10': 'sender'},
    const {'1': 'recipient', '3': 2, '4': 1, '5': 12, '10': 'recipient'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 3, '10': 'amount'},
  ],
};

const GenerateID$json = const {
  '1': 'GenerateID',
  '2': const [
    const {'1': 'public_key', '3': 1, '4': 1, '5': 12, '10': 'publicKey'},
    const {'1': 'registration_fee', '3': 2, '4': 1, '5': 3, '10': 'registrationFee'},
  ],
};

const NanoPay$json = const {
  '1': 'NanoPay',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 12, '10': 'sender'},
    const {'1': 'recipient', '3': 2, '4': 1, '5': 12, '10': 'recipient'},
    const {'1': 'id', '3': 3, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'amount', '3': 4, '4': 1, '5': 3, '10': 'amount'},
    const {'1': 'txn_expiration', '3': 5, '4': 1, '5': 13, '10': 'txnExpiration'},
    const {'1': 'nano_pay_expiration', '3': 6, '4': 1, '5': 13, '10': 'nanoPayExpiration'},
  ],
};

const IssueAsset$json = const {
  '1': 'IssueAsset',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 12, '10': 'sender'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'symbol', '3': 3, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'total_supply', '3': 4, '4': 1, '5': 3, '10': 'totalSupply'},
    const {'1': 'precision', '3': 5, '4': 1, '5': 13, '10': 'precision'},
  ],
};

