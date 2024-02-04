// ignore_for_file: public_member_api_docs, sort_constructors_first

/// [Response] is the base response class for all authentication
/// and it's a generic class that accepts a data T which could be optional
/// base on the authentication.
/// Durin authentication this class should always be returned.
abstract class Response<T> {

  ///[T] expected data
  final T? data;

  ///[message] message from server
  final String message;

  ///[error] indicates if there's error or not from the server
  final bool error;

  ///[status] custom status code
  final String status;

  ///[token] This is only returned during login process
  final String? token;

  Response({
    this.data,
    required this.message,
    required this.error,
    required this.status,
    this.token,
  });
}
