///[ApiUri] this class is a constant class that contains all the Uri setup
///for each enpoint and makes it much more easier
class ApiUri {
  ///[_host] This is the host of the server
  static const String _host = 'mypitchhub-as4h.onrender.com';

  ///[_scheme] This defines the scheme for the api (http or https)
  static const String _scheme = 'https';

  ///[_version] This is the api version e.g v1
  // static String _version = 'test_v1';

  /// This is the base Uri setup for all enpoints
  static Uri _baseUri(String path) => Uri(
        scheme: _scheme,
        host: _host,
        path: path,
      );



  //==================== Authentication Uri Setup ===================//

  ///[_authBase] This is the base Uri for the authentication endpoints
  static Uri _authBase(String path) => _baseUri('auth/$path');

  ///[login] this login uri is built from the [_authBase] uri by passing
  ///the path to it
  static Uri login() => _authBase('/login');

  ///[signup] this signup uri is built from the [_authBase] uri by passing
  ///the path to it
  static Uri signup() => _authBase('/signup');

  ///[changePassword] this changePassword uri is built from the
  ///[_authBase] uri by passing
  ///the path to it
  static Uri changePassword() => _authBase('/change-password');

  ///[forgotPassword] this forgotPassword uri is built from the
  ///[_authBase] uri by passing
  ///the path to it
  static Uri forgotPassword() => _authBase('/forgot-password');

  ///[resetPassword] this resetPassword uri is built from the
  ///[_authBase] uri by passing
  ///the path to it
  static Uri resetPassword() => _authBase('/reset-password');

  //==================== Authentication Uri Setup End ===================//


  
}
