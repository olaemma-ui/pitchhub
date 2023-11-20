
///[ApiUri] this class is a constant class that contains all the Uri setup
///for each enpoint and makes it much more easier
class ApiUri {
  ///[_host] This is the host of the server
  static String _host = 'mytest_host';

  ///[_scheme] This defines the scheme for the api (http or https)
  static String _scheme = 'https';

  ///[_version] This is the api version e.g v1
  static String _version = 'test_v1';

  /// This is the base Uri setup for all enpoints
  static Uri _baseUri(String path) => Uri(
        scheme: _scheme,
        host: _host,
        path: path,
      );

  ///[_authBase] This is the base Uri for the authentication endpoints
  static Uri _authBase(String path) => _baseUri(path);

  ///[login] this login uri is built from the [_authBase] uri by passing
  ///the path to it
  static Uri login() => _authBase('path');
}
