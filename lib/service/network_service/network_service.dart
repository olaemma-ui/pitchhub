import 'package:dartz/dartz.dart';
import 'package:pitchub/exceptions/exceptions.dart';
import 'package:pitchub/value_object/response_object/base/base_response.dart';


/// [NetworkService] This class handles 
abstract class NetworkService {
  
  ///[getUri] This method is used on get request
  ///The [uri] parameter is the uri to the enpoibt to fetch data from
  ///The  [headers] parameter is only passed when there's need to parse an header for th request
  Future<Either<Failure, ResponseObject<T>>> getUri<T>(
    Uri uri, {
    Map<String, dynamic>? headers,
    dynamic queryParameters,
  });

  ///[postUri] This method is used on get request
  ///The [uri] parameter is the uri to the enpoibt to fetch data from
  ///The  [headers] parameter is only passed when there's need to parse an header for th request
  ///The  [body] this is the request body for the endpoint called using this method
  Future<Either<Failure, ResponseObject<T>>> postUri<T>(
    Uri uri, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
    dynamic queryParameters,
  });

  ///[getUri] This method is used on get request
  ///The [uri] parameter is the uri to the enpoibt to fetch data from
  ///The  [headers] parameter is only passed when there's need to parse an header for th request
  //////The  [body] this is the request body for the endpoint called using this method
  Future<Either<Failure, ResponseObject<T>>> deletUri<T>(
    Uri uri, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
    dynamic queryParameters,
  });

  ///[getUri] This method is used on get request
  ///The [uri] parameter is the uri to the enpoibt to fetch data from
  ///The  [headers] parameter is only passed when there's need to parse an header for th request
  //////The  [body] this is the request body for the endpoint called using this method
  Future<Either<Failure, ResponseObject<T>>> putUri<T>(
    Uri uri, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    dynamic queryParameters,
  });
}
