import 'package:flutter_test/flutter_test.dart';
import 'package:nkn_sdk/network/rpcApi.dart';

void main() {
  test('getSubscribers', () async {
    RpcApi api = new RpcApi();
    var res = await api.getSubscribers('dchataf9cffd27e732f7a39fe56007163ca09803197f5', meta: true, txPool: true);
    print(res);
  });

  test('getSubscribersCount', () async {
    RpcApi api = new RpcApi();
    var res = await api.getSubscribersCount('dchataf9cffd27e732f7a39fe56007163ca09803197f5');
    print(res);
  });

  test('getSubscription', () async {
    RpcApi api = new RpcApi();
    var res = await api.getSubscription('dchataf9cffd27e732f7a39fe56007163ca09803197f5', 'heron.25ac590eaca614a0ba4c4387d8514a0b54e948d120c6ff49564e7830c9dec929');
    print(res);
  });
}

