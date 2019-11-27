library wallet;

import 'dart:convert';
import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:nkn_sdk/crypto/hash.dart';
import 'package:nkn_sdk/errors/walletError.dart';
import 'package:nkn_sdk/pb/transaction.pb.dart';
import 'package:nkn_sdk/transaction/payload.dart';
import 'package:nkn_sdk/transaction/transaction.dart';

import 'crypto/account.dart';
import 'crypto/encryption.dart' as encryption;
import 'network/rpcApi.dart';
import 'network/wsApi.dart';
import 'utils/utils.dart';

RpcApi api = RpcApi();

class Client {
  WsApi _api;
  Client(String seed, String identifier, {seedRpcServer, bool encrypt, int msgHoldingSeconds, int reconnectIntervalMin, int reconnectIntervalMax, int responseTimeout}){
      _api = WsApi(seed, identifier, seedRpcServer: seedRpcServer, encrypt: encrypt, msgHoldingSeconds: msgHoldingSeconds, reconnectIntervalMin: reconnectIntervalMax, responseTimeout: responseTimeout);
  }
}
