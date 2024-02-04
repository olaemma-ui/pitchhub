

import 'package:dartz/dartz.dart';
import 'package:pitchub/exceptions/exceptions.dart';
import 'package:pitchub/service/network_service/network_service.dart';
import 'package:pitchub/value_object/response_object/base/base_response.dart';

class NetworkServiceImpl extends NetworkService{
  @override
  Future<Either<Failure, Response<T>>> deletUri<T>(Uri uri, {Map<String, dynamic>? headers, Map<String, dynamic>? body, queryParameters}) {
    // TODO: implement deletUri
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Response<T>>> getUri<T>(Uri uri, {Map<String, dynamic>? headers, queryParameters}) {
    // TODO: implement getUri
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Response<T>>> postUri<T>(Uri uri, {Map<String, dynamic>? headers, Map<String, dynamic>? body, queryParameters}) {
    // TODO: implement postUri
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Response<T>>> putUri<T>(Uri uri, {Map<String, dynamic>? body, Map<String, dynamic>? headers, queryParameters}) {
    // TODO: implement putUri
    throw UnimplementedError();
  }

}