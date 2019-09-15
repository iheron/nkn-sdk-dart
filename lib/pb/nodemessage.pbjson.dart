///
//  Generated code. Do not modify.
//  source: pb/nodemessage.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const MessageType$json = const {
  '1': 'MessageType',
  '2': const [
    const {'1': 'MESSAGE_TYPE_PLACEHOLDER_DO_NOT_USE', '2': 0},
    const {'1': 'VOTE', '2': 1},
    const {'1': 'I_HAVE_BLOCK_PROPOSAL', '2': 2},
    const {'1': 'REQUEST_BLOCK_PROPOSAL', '2': 3},
    const {'1': 'REQUEST_BLOCK_PROPOSAL_REPLY', '2': 4},
    const {'1': 'GET_CONSENSUS_STATE', '2': 5},
    const {'1': 'GET_CONSENSUS_STATE_REPLY', '2': 6},
    const {'1': 'GET_BLOCK_HEADERS', '2': 7},
    const {'1': 'GET_BLOCK_HEADERS_REPLY', '2': 8},
    const {'1': 'GET_BLOCKS', '2': 9},
    const {'1': 'GET_BLOCKS_REPLY', '2': 10},
    const {'1': 'RELAY', '2': 11},
    const {'1': 'TRANSACTIONS', '2': 12},
    const {'1': 'BACKTRACK_SIGNATURE_CHAIN', '2': 13},
    const {'1': 'REQUEST_PROPOSAL_TRANSACTIONS', '2': 14},
    const {'1': 'REQUEST_PROPOSAL_TRANSACTIONS_REPLY', '2': 15},
    const {'1': 'I_HAVE_SIGNATURE_CHAIN_TRANSACTION', '2': 16},
    const {'1': 'REQUEST_SIGNATURE_CHAIN_TRANSACTION', '2': 17},
    const {'1': 'REQUEST_SIGNATURE_CHAIN_TRANSACTION_REPLY', '2': 18},
  ],
};

const AllowedSignedMessageType$json = const {
  '1': 'AllowedSignedMessageType',
  '2': const [
    const {'1': 'ALLOW_SIGNED_PLACEHOLDER_DO_NOT_USE', '2': 0},
  ],
};

const AllowedUnsignedMessageType$json = const {
  '1': 'AllowedUnsignedMessageType',
  '2': const [
    const {'1': 'ALLOW_UNSIGNED_PLACEHOLDER_DO_NOT_USE', '2': 0},
    const {'1': 'ALLOW_UNSIGNED_VOTE', '2': 1},
    const {'1': 'ALLOW_UNSIGNED_I_HAVE_BLOCK_PROPOSAL', '2': 2},
    const {'1': 'ALLOW_UNSIGNED_REQUEST_BLOCK_PROPOSAL', '2': 3},
    const {'1': 'ALLOW_UNSIGNED_REQUEST_BLOCK_REPLY', '2': 4},
    const {'1': 'ALLOW_UNSIGNED_GET_CONSENSUS_STATE', '2': 5},
    const {'1': 'ALLOW_UNSIGNED_GET_CONSENSUS_STATE_REPLY', '2': 6},
    const {'1': 'ALLOW_UNSIGNED_GET_BLOCK_HEADERS', '2': 7},
    const {'1': 'ALLOW_UNSIGNED_GET_BLOCK_HEADERS_REPLY', '2': 8},
    const {'1': 'ALLOW_UNSIGNED_GET_BLOCKS', '2': 9},
    const {'1': 'ALLOW_UNSIGNED_GET_BLOCKS_REPLY', '2': 10},
    const {'1': 'ALLOW_UNSIGNED_RELAY', '2': 11},
    const {'1': 'ALLOW_UNSIGNED_TRANSACTIONS', '2': 12},
    const {'1': 'ALLOW_UNSIGNED_BACKTRACK_SIGNATURE_CHAIN', '2': 13},
    const {'1': 'ALLOW_UNSIGNED_REQUEST_PROPOSAL_TRANSACTIONS', '2': 14},
    const {'1': 'ALLOW_UNSIGNED_REQUEST_PROPOSAL_TRANSACTIONS_REPLY', '2': 15},
    const {'1': 'ALLOW_UNSIGNED_I_HAVE_SIGNATURE_CHAIN_TRANSACTION', '2': 16},
    const {'1': 'ALLOW_UNSIGNED_REQUEST_SIGNATURE_CHAIN_TRANSACTION', '2': 17},
    const {'1': 'ALLOW_UNSIGNED_REQUEST_SIGNATURE_CHAIN_TRANSACTION_REPLY', '2': 18},
  ],
};

const AllowedDirectMessageType$json = const {
  '1': 'AllowedDirectMessageType',
  '2': const [
    const {'1': 'ALLOW_DIRECT_PLACEHOLDER_DO_NOT_USE', '2': 0},
    const {'1': 'ALLOW_DIRECT_VOTE', '2': 1},
    const {'1': 'ALLOW_DIRECT_I_HAVE_BLOCK_PROPOSAL', '2': 2},
    const {'1': 'ALLOW_DIRECT_REQUEST_BLOCK_PROPOSAL', '2': 3},
    const {'1': 'ALLOW_DIRECT_REQUEST_BLOCK_REPLY', '2': 4},
    const {'1': 'ALLOW_DIRECT_GET_CONSENSUS_STATE', '2': 5},
    const {'1': 'ALLOW_DIRECT_GET_CONSENSUS_STATE_REPLY', '2': 6},
    const {'1': 'ALLOW_DIRECT_GET_BLOCK_HEADERS', '2': 7},
    const {'1': 'ALLOW_DIRECT_GET_BLOCK_HEADERS_REPLY', '2': 8},
    const {'1': 'ALLOW_DIRECT_GET_BLOCKS', '2': 9},
    const {'1': 'ALLOW_DIRECT_GET_BLOCKS_REPLY', '2': 10},
    const {'1': 'ALLOW_DIRECT_BACKTRACK_SIGNATURE_CHAIN', '2': 13},
    const {'1': 'ALLOW_DIRECT_REQUEST_PROPOSAL_TRANSACTIONS', '2': 14},
    const {'1': 'ALLOW_DIRECT_REQUEST_PROPOSAL_TRANSACTIONS_REPLY', '2': 15},
    const {'1': 'ALLOW_DIRECT_I_HAVE_SIGNATURE_CHAIN_TRANSACTION', '2': 16},
    const {'1': 'ALLOW_DIRECT_REQUEST_SIGNATURE_CHAIN_TRANSACTION', '2': 17},
    const {'1': 'ALLOW_DIRECT_REQUEST_SIGNATURE_CHAIN_TRANSACTION_REPLY', '2': 18},
  ],
};

const AllowedRelayMessageType$json = const {
  '1': 'AllowedRelayMessageType',
  '2': const [
    const {'1': 'ALLOW_RELAY_PLACEHOLDER_DO_NOT_USE', '2': 0},
    const {'1': 'ALLOW_RELAY_RELAY', '2': 11},
  ],
};

const AllowedBroadcastPushMessageType$json = const {
  '1': 'AllowedBroadcastPushMessageType',
  '2': const [
    const {'1': 'ALLOW_BROADCAST_PUSH_PLACEHOLDER_DO_NOT_USE', '2': 0},
    const {'1': 'ALLOW_BROADCAST_PUSH_TRANSACTIONS', '2': 12},
  ],
};

const AllowedBroadcastPullMessageType$json = const {
  '1': 'AllowedBroadcastPullMessageType',
  '2': const [
    const {'1': 'ALLOW_BROADCAST_PULL_PLACEHOLDER_DO_NOT_USE', '2': 0},
  ],
};

const AllowedBroadcastTreeMessageType$json = const {
  '1': 'AllowedBroadcastTreeMessageType',
  '2': const [
    const {'1': 'ALLOW_BROADCAST_TREE_PLACEHOLDER_DO_NOT_USE', '2': 0},
    const {'1': 'ALLOW_BROADCAST_TREE_TRANSACTIONS', '2': 12},
  ],
};

const RequestTransactionType$json = const {
  '1': 'RequestTransactionType',
  '2': const [
    const {'1': 'REQUEST_FULL_TRANSACTION', '2': 0},
    const {'1': 'REQUEST_TRANSACTION_HASH', '2': 1},
    const {'1': 'REQUEST_TRANSACTION_SHORT_HASH', '2': 2},
  ],
};

const UnsignedMessage$json = const {
  '1': 'UnsignedMessage',
  '2': const [
    const {'1': 'message_type', '3': 1, '4': 1, '5': 14, '6': '.pb.MessageType', '10': 'messageType'},
    const {'1': 'message', '3': 2, '4': 1, '5': 12, '10': 'message'},
  ],
};

const SignedMessage$json = const {
  '1': 'SignedMessage',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 12, '10': 'message'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
  ],
};

const Vote$json = const {
  '1': 'Vote',
  '2': const [
    const {'1': 'height', '3': 1, '4': 1, '5': 13, '10': 'height'},
    const {'1': 'block_hash', '3': 2, '4': 1, '5': 12, '10': 'blockHash'},
  ],
};

const IHaveBlockProposal$json = const {
  '1': 'IHaveBlockProposal',
  '2': const [
    const {'1': 'height', '3': 1, '4': 1, '5': 13, '10': 'height'},
    const {'1': 'block_hash', '3': 2, '4': 1, '5': 12, '10': 'blockHash'},
  ],
};

const RequestBlockProposal$json = const {
  '1': 'RequestBlockProposal',
  '2': const [
    const {'1': 'block_hash', '3': 1, '4': 1, '5': 12, '10': 'blockHash'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.pb.RequestTransactionType', '10': 'type'},
    const {'1': 'short_hash_salt', '3': 3, '4': 1, '5': 12, '10': 'shortHashSalt'},
    const {'1': 'short_hash_size', '3': 4, '4': 1, '5': 13, '10': 'shortHashSize'},
  ],
};

const RequestBlockProposalReply$json = const {
  '1': 'RequestBlockProposalReply',
  '2': const [
    const {'1': 'block', '3': 1, '4': 1, '5': 11, '6': '.pb.Block', '10': 'block'},
    const {'1': 'transactions_hash', '3': 2, '4': 3, '5': 12, '10': 'transactionsHash'},
  ],
};

const RequestProposalTransactions$json = const {
  '1': 'RequestProposalTransactions',
  '2': const [
    const {'1': 'block_hash', '3': 1, '4': 1, '5': 12, '10': 'blockHash'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.pb.RequestTransactionType', '10': 'type'},
    const {'1': 'short_hash_salt', '3': 3, '4': 1, '5': 12, '10': 'shortHashSalt'},
    const {'1': 'short_hash_size', '3': 4, '4': 1, '5': 13, '10': 'shortHashSize'},
    const {'1': 'transactions_hash', '3': 5, '4': 3, '5': 12, '10': 'transactionsHash'},
  ],
};

const RequestProposalTransactionsReply$json = const {
  '1': 'RequestProposalTransactionsReply',
  '2': const [
    const {'1': 'transactions', '3': 1, '4': 3, '5': 11, '6': '.pb.Transaction', '10': 'transactions'},
  ],
};

const GetConsensusState$json = const {
  '1': 'GetConsensusState',
};

const GetConsensusStateReply$json = const {
  '1': 'GetConsensusStateReply',
  '2': const [
    const {'1': 'ledger_block_hash', '3': 2, '4': 1, '5': 12, '10': 'ledgerBlockHash'},
    const {'1': 'ledger_height', '3': 1, '4': 1, '5': 13, '10': 'ledgerHeight'},
    const {'1': 'consensus_height', '3': 3, '4': 1, '5': 13, '10': 'consensusHeight'},
    const {'1': 'min_verifiable_height', '3': 5, '4': 1, '5': 13, '10': 'minVerifiableHeight'},
    const {'1': 'sync_state', '3': 4, '4': 1, '5': 14, '6': '.pb.SyncState', '10': 'syncState'},
  ],
};

const GetBlockHeaders$json = const {
  '1': 'GetBlockHeaders',
  '2': const [
    const {'1': 'start_height', '3': 1, '4': 1, '5': 13, '10': 'startHeight'},
    const {'1': 'end_height', '3': 2, '4': 1, '5': 13, '10': 'endHeight'},
  ],
};

const GetBlockHeadersReply$json = const {
  '1': 'GetBlockHeadersReply',
  '2': const [
    const {'1': 'block_headers', '3': 1, '4': 3, '5': 11, '6': '.pb.Header', '10': 'blockHeaders'},
  ],
};

const GetBlocks$json = const {
  '1': 'GetBlocks',
  '2': const [
    const {'1': 'start_height', '3': 1, '4': 1, '5': 13, '10': 'startHeight'},
    const {'1': 'end_height', '3': 2, '4': 1, '5': 13, '10': 'endHeight'},
  ],
};

const GetBlocksReply$json = const {
  '1': 'GetBlocksReply',
  '2': const [
    const {'1': 'blocks', '3': 1, '4': 3, '5': 11, '6': '.pb.Block', '10': 'blocks'},
  ],
};

const Relay$json = const {
  '1': 'Relay',
  '2': const [
    const {'1': 'src_identifier', '3': 1, '4': 1, '5': 9, '10': 'srcIdentifier'},
    const {'1': 'src_pubkey', '3': 6, '4': 1, '5': 12, '10': 'srcPubkey'},
    const {'1': 'dest_id', '3': 2, '4': 1, '5': 12, '10': 'destId'},
    const {'1': 'payload', '3': 3, '4': 1, '5': 12, '10': 'payload'},
    const {'1': 'max_holding_seconds', '3': 5, '4': 1, '5': 13, '10': 'maxHoldingSeconds'},
    const {'1': 'block_hash', '3': 7, '4': 1, '5': 12, '10': 'blockHash'},
    const {'1': 'last_signature', '3': 8, '4': 1, '5': 12, '10': 'lastSignature'},
    const {'1': 'sig_chain_len', '3': 9, '4': 1, '5': 13, '10': 'sigChainLen'},
  ],
};

const Transactions$json = const {
  '1': 'Transactions',
  '2': const [
    const {'1': 'transactions', '3': 1, '4': 3, '5': 11, '6': '.pb.Transaction', '10': 'transactions'},
  ],
};

const BacktrackSignatureChain$json = const {
  '1': 'BacktrackSignatureChain',
  '2': const [
    const {'1': 'sig_chain_elems', '3': 1, '4': 3, '5': 11, '6': '.pb.SigChainElem', '10': 'sigChainElems'},
    const {'1': 'prev_signature', '3': 2, '4': 1, '5': 12, '10': 'prevSignature'},
  ],
};

const IHaveSignatureChainTransaction$json = const {
  '1': 'IHaveSignatureChainTransaction',
  '2': const [
    const {'1': 'height', '3': 1, '4': 1, '5': 13, '10': 'height'},
    const {'1': 'signature_hash', '3': 2, '4': 1, '5': 12, '10': 'signatureHash'},
  ],
};

const RequestSignatureChainTransaction$json = const {
  '1': 'RequestSignatureChainTransaction',
  '2': const [
    const {'1': 'signature_hash', '3': 1, '4': 1, '5': 12, '10': 'signatureHash'},
  ],
};

const RequestSignatureChainTransactionReply$json = const {
  '1': 'RequestSignatureChainTransactionReply',
  '2': const [
    const {'1': 'transaction', '3': 1, '4': 1, '5': 11, '6': '.pb.Transaction', '10': 'transaction'},
  ],
};

