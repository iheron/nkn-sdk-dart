class WalletErrorCode {
  static const int UNKNOWN_ERROR = 0;
  static const int NOT_ENOUGH_BALANCE = 1;
  static const int INVALID_ADDRESS = 2;
  static const int WRONG_PASSWORD = 3;
  static const int INVALID_WALLET_FORMAT = 4;
  static const int INVALID_WALLET_VERSION = 5;
  static const int INVALID_ARGUMENT = 6;
  static const int INVALID_RESPONSE = 7;
  static const int NO_RPC_SERVER = 8;
  static const int SERVER_ERROR = 9;
}

class WalletErrorMsg {
  static const String UNKNOWN_ERROR = 'unknown error';
  static const String NOT_ENOUGH_BALANCE = 'not enough balance';
  static const String INVALID_ADDRESS = 'invalid wallet address';
  static const String WRONG_PASSWORD = 'invalid password';
  static const String INVALID_WALLET_FORMAT = 'invalid wallet format';
  static const String INVALID_WALLET_VERSION = 'invalid wallet verison';
  static const String INVALID_ARGUMENT = 'invalid argument';
  static const String INVALID_RESPONSE = 'invalid response from server';
  static const String NO_RPC_SERVER = 'RPC server address is not set';
  static const String SERVER_ERROR = 'error from server';
}

class WalletError extends Error {
  int code;
  String message;

  WalletError(
      [this.code = WalletErrorCode.UNKNOWN_ERROR,
      this.message = WalletErrorMsg.UNKNOWN_ERROR]);
}
