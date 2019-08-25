import 'package:flutter_test/flutter_test.dart';

import 'package:nkn_sdk/wallet.dart';

void main() {
  test('create random wallet', () {
    final wallet = Wallet.createRandom();
    print(wallet);
  });
}
