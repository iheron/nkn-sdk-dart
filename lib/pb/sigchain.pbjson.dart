///
//  Generated code. Do not modify.
//  source: pb/sigchain.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const SigAlgo$json = const {
  '1': 'SigAlgo',
  '2': const [
    const {'1': 'SIGNATURE', '2': 0},
    const {'1': 'VRF', '2': 1},
  ],
};

const SigChainElem$json = const {
  '1': 'SigChainElem',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    const {'1': 'next_pubkey', '3': 2, '4': 1, '5': 12, '10': 'nextPubkey'},
    const {'1': 'mining', '3': 3, '4': 1, '5': 8, '10': 'mining'},
    const {'1': 'signature', '3': 4, '4': 1, '5': 12, '10': 'signature'},
    const {'1': 'sig_algo', '3': 5, '4': 1, '5': 14, '6': '.pb.SigAlgo', '10': 'sigAlgo'},
    const {'1': 'vrf', '3': 6, '4': 1, '5': 12, '10': 'vrf'},
    const {'1': 'proof', '3': 7, '4': 1, '5': 12, '10': 'proof'},
  ],
};

const SigChain$json = const {
  '1': 'SigChain',
  '2': const [
    const {'1': 'nonce', '3': 1, '4': 1, '5': 13, '10': 'nonce'},
    const {'1': 'data_size', '3': 2, '4': 1, '5': 13, '10': 'dataSize'},
    const {'1': 'block_hash', '3': 3, '4': 1, '5': 12, '10': 'blockHash'},
    const {'1': 'src_id', '3': 4, '4': 1, '5': 12, '10': 'srcId'},
    const {'1': 'src_pubkey', '3': 5, '4': 1, '5': 12, '10': 'srcPubkey'},
    const {'1': 'dest_id', '3': 6, '4': 1, '5': 12, '10': 'destId'},
    const {'1': 'dest_pubkey', '3': 7, '4': 1, '5': 12, '10': 'destPubkey'},
    const {'1': 'elems', '3': 8, '4': 3, '5': 11, '6': '.pb.SigChainElem', '10': 'elems'},
  ],
};

