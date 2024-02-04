abstract class ErrorMessages {
  /// Error message when a connection timesout.
  static const String connectionTimedOut =
      '''Oops! connection timed out. Please try again.''';

  /// Error message when there is a send time out.
  static const String sendTimeOut =
      '''Oops! Connection timed out. Please ensure your internet connection is stable and try again.''';

  /// Error message when the client doesn't
  /// response out data in the given time splice.
  static const String receiveTimeOut =
      '''Oops! Connection timed out. Please ensure your internet connection is stable and try again.''';

  /// Error message typically shown when there is a network
  /// response carries error.
  static const String responseError =
      '''Oops! There was something wrong with processing your request.Pls ensure your internet connection is stable.''';

  /// Error message typically shown when a network request is cancelled.
  static const String requestCancelled =
      'Opps your was terminated. Please try again';

  /// A generic error message when the cause of the error cannot be determined.
  static const String somethingWentWrong =
      'Oopss! something went wrong. Please try again';

  /// Error message shown when there is no interet connection.
  /// Example is SocketException.
  static const String noInternet =
      '''Your internet connection is not stable, Please check your internet connection and try again.''';

  /// Error message shown when user location is not detected.
  static const String unknownLocationError =
      '''Unable to retrieve current location, ensure you have turned on your location''';

  /// Error message shown when the users tries to sign up an
  /// email that already exists.
  static const String accountAlreadyExists = 'Account already exists';

  /// Errow message shown when trying trying to log in an unverified account.
  static const String accountNotVerified = 'Account is not verified';

  /// Error message shown when trying to log in with an invalid email or password.
  static const String invalidEmailOrPassword = 'Invalid email or password';
 
  /// Error message shown when trying to log in with an invalid email or password.
  static const String invalidOldPassword = 'Old password missmatch';

  /// Error message when trying to access unknown endpoint.
  /// Note: This error message is not to be shown to the user..
  /// [somethingWentWrong] is right error image to be shown when this
  /// type of error message occures. it is only used to compare the network
  /// error message to know if the both messages match, to show the user a more
  /// readable result....
  static const String apiEndpointNotFound = 'API endpoint not found';

  /// Error message shown when the user doesn't select an image.
  static const String imageNotSelected = 'You didnt select an image';

  /// Error message when trying to access platform services and the app isn't
  /// permitted to use the platform services.
  static const String permissionNotGranted =
      'Opps you didnt grant us permission';
}
