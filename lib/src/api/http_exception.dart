/// An exception from a network API request
/// [code] refers to the error code of the exception and
/// [message] is the reason for the error
class HttpException implements Exception {
  final int code;
  final String? message;

  HttpException(this.code, this.message);

  @override
  String toString() {
    return 'HttpException: $code : ${message ?? ''}';
  }
}