// ignore_for_file: public_member_api_docs, sort_constructors_first

/// This class is the base failure class that default exception format
/// [prettyMessage] This message is displayed to the user
/// [devMessage] This message is logged in the terminal for the developer
/// [stackTrace] This is the stacktrace for the exception
/// [statusCode] This is the status code of the exception
/// [Failure] Base Exception/error class will be extended by other classes
abstract class Failure {
  ///[prettyMessage] UI message
  final String prettyMessage;

  ///[devMessage] Developr message
  final String devMessage;

  ///[stackTrace] error stackTrace
  final StackTrace stackTrace;

  ///[statusCode] the error status code
  final int statusCode;
  Failure({
    required this.prettyMessage,
    required this.devMessage,
    required this.stackTrace,
    required this.statusCode,
  });
}

///[NoInternetException] this exception is thrown when there's no internet 
///connection
class NoInternetException extends Failure {
  NoInternetException({
    required super.prettyMessage,
    required super.devMessage,
    required super.stackTrace,
    required super.statusCode,
  });
}

