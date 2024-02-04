// ignore_for_file: public_member_api_docs, sort_constructors_first

/// [Response] is the base response class for all authentication
/// and it's a generic class that accepts a data T which could be optional
/// base on the authentication.
/// Durin authentication this class should always be returned.
class ResponseObject<T> {

  ///[T] expected data
  final T? data;

  ///[message] message from server
  final String? statusMessage;

  ///[status] custom status code
  final int? statusCode;

  ResponseObject({
    this.data,
    required this.statusMessage,
    required this.statusCode,
  });
}
