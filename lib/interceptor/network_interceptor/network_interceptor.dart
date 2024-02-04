import 'package:dio/dio.dart';

class NetworkInterceptor implements Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // TODO: implement onError
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO: implement onRequest

    if (!options.path.contains('/auth')) {
      options.headers = {
        'Authorization': '',
      };
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
    LogInterceptor().onResponse(response, handler);
  }
}
