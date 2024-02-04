import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pitchub/exceptions/exception_handler.dart';
import 'package:pitchub/exceptions/exceptions.dart';
import 'package:pitchub/interceptor/network_interceptor/network_interceptor.dart';
import 'package:pitchub/service/network_service/network_service.dart';
import 'package:pitchub/value_object/response_object/base/base_response.dart';

class NetworkServiceImpl extends NetworkService{

  Dio _dio = Dio(
    BaseOptions(
      connectTimeout: Duration(seconds: 30),

    )
  );

  NetworkServiceImpl(){
    _dio.interceptors.addAll([NetworkInterceptor()]);
  }

  @override
  Future<Either<Failure, ResponseObject<T>>> deletUri<T>(Uri uri, {Map<String, dynamic>? headers, Map<String, dynamic>? body, queryParameters}) async{
    // TODO: implement deletUri
    try{
      final response = await _dio.deleteUri(uri, options: Options(headers: headers));
      return Right(ResponseObject(
        statusCode: response.statusCode, 
        statusMessage: response.statusMessage, 
        data: response.data as T
      ));
    } on DioException catch(e){
      return Left(ExceptionHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, ResponseObject<T>>> getUri<T>(Uri uri, {Map<String, dynamic>? headers, queryParameters}) async{
    // TODO: implement getUri
    try{
      final response = await _dio.getUri(uri, options: Options(headers: headers));
      return Right(ResponseObject(
        statusCode: response.statusCode, 
        statusMessage: response.statusMessage, 
        data: response.data as T
      ));
    } on DioException catch(e){
      return Left(ExceptionHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, ResponseObject<T>>> postUri<T>(Uri uri, {Map<String, dynamic>? headers, Map<String, dynamic>? body, queryParameters}) async{
    // TODO: implement postUri
    try{
      final response = await _dio.postUri(uri, options: Options(headers: headers));
      return Right(ResponseObject(
        statusCode: response.statusCode, 
        statusMessage: response.statusMessage, 
        data: response.data as T
      ));
    } on DioException catch(e){
      return Left(ExceptionHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, ResponseObject<T>>> putUri<T>(Uri uri, {Map<String, dynamic>? body, Map<String, dynamic>? headers, queryParameters}) async{
    // TODO: implement putUri
    try{
      final response = await _dio.putUri(uri, options: Options(headers: headers));
      return Right(ResponseObject(
        statusCode: response.statusCode, 
        statusMessage: response.statusMessage, 
        data: response.data as T
      ));
    } on DioException catch(e){
      return Left(ExceptionHandler.handleException(e));
    }
  }

}