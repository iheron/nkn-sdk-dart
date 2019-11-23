class RpcErrorCode {
  static const int UNKNOWN_ERROR = 0;
}

class RpcErrorMsg {
  static const String UNKNOWN_ERROR = 'unknown error';
}

class RpcError extends Error {
  int code;
  String message;

  RpcError(
      [this.code = RpcErrorCode.UNKNOWN_ERROR,
      this.message = RpcErrorMsg.UNKNOWN_ERROR]);
}
