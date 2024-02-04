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
  Failure({
    required this.prettyMessage,
    required this.devMessage,
    this.stackTrace = StackTrace.empty,
  });
}

/// This exception is thrown when the user account already exists.
final class AccountAlreadyExistsException extends Failure {
  /// This is the constructor of the [AccountAlreadyExistsException] class.
  AccountAlreadyExistsException({
    required super.prettyMessage,
    required super.devMessage,
    super.stackTrace,
  });
}

/// This exception is thrown when the user is not verified.
final class AccountNotVerifiedException extends Failure {
  /// This is the constructor of the [AccountNotVerifiedException] class.
  AccountNotVerifiedException({
    required super.prettyMessage,
    required super.devMessage,
    super.stackTrace,
  });
}

/// This exception is thrown when the user is not authenticated.
/// It is typically thrown when the authentication information are invalid.
final class AuthenticationException extends Failure {
  /// This is the constructor of the [AuthenticationException] class.
  AuthenticationException({
    required super.prettyMessage,
    required super.devMessage,
    super.stackTrace,
  });
}

/// This exceptions when there is a recieve timeout exception.
/// It is typically thrown when the client doesn't respond during
/// the specified timesplice.
final class ClientNetworkException extends Failure {
  /// This is the constructor of the [ClientNetworkException]  class.
  ClientNetworkException({
    required super.prettyMessage,
    required super.devMessage,
    super.stackTrace,
  });
}

/// This exception is thrown when the server returns a bad reponse,
/// or the user sends a bad request.
final class BadFormatException extends Failure {
  /// This is the constructor of the [BadFormatException]  class.
  BadFormatException({
    required super.prettyMessage,
    required super.devMessage,
    this.code,
    super.stackTrace,
  });

  /// status code of the error.
  final int? code;
}

/// This exception is thrown when the user's internet connection
/// is not available.
final class NoInternetException extends Failure {
  /// This is the constructor of the [NoInternetException]  class.
  NoInternetException({
    required super.prettyMessage,
    required super.devMessage,
    super.stackTrace,
  });
}

/// This exception is thrown when the server returns a 404 error.
/// Also when the type of error cannot be determined.
final class UnknownException extends Failure {
  /// This is the constructor of the [UnknownException]  class.
  UnknownException({
    required super.prettyMessage,
    required super.devMessage,
    required this.code,
    super.stackTrace,
  });

  /// status code of the error.
  final int? code;
}

/// This exception is thrown when the server returns a 500 error.
/// It is typically thrown when the server is down.
/// This exception can when the server doesn't respond within the timesplice.
final class ServerNetworkException extends Failure {
  /// This is the constructor of the [ServerNetworkException]  class.
  ServerNetworkException({
    required super.prettyMessage,
    required super.devMessage,
    required this.code,
    super.stackTrace,
  });

  /// status code of the error.
  final int? code;
}

/// This exception is thrown when the requested cached data is not found.
final class RequestCancelledException extends Failure {
  /// This is the constructor of the [RequestCancelledException]  class.
  RequestCancelledException({
    required super.prettyMessage,
    required super.devMessage,
    required this.code,
    super.stackTrace,
  });

  /// status code of the error.
  final int? code;
}

/// This exception is thrown when the requested cached data is not found.
final class DefaultException extends Failure {
  /// This is the constructor of the [RequestCancelledException]  class.
  DefaultException({
    required super.prettyMessage,
    required super.devMessage,
    required this.code,
    required this.error,
    required this.status,
    super.stackTrace,
  });

  /// status code of the error.
  final int? code;
  final int status;
  final bool error;
}
