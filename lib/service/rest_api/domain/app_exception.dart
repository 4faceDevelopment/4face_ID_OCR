/// エラー種別
enum ErrorType {
  offline, //通信エラー
  apiFailure, //APIによる通信エラー
  timeout, //タイムアウト
  undefined, //想定外のエラー
}

class AppException implements Exception {
  AppException({
    required this.code,
    required this.message,
    this.networkStatusCode,
    this.ignore = false,
  });

  final bool ignore;

  final String code;
  final String? message;
  final int? networkStatusCode;

  factory AppException.undefine(String message) {
    return AppException(code: '9999', message: message);
  }

  factory AppException.ignore(String message) {
    return AppException(code: '9999', message: message, ignore: true);
  }
}
