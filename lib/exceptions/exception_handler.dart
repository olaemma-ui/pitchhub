import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pitchub/exceptions/error_message.dart';
import 'package:pitchub/exceptions/exceptions.dart';

class ExceptionHandler {
  static Failure handleException(DioException e) {
    
    if (e.response?.data != null) {
      final resp = (e.response?.data as Map<String, dynamic>);
      return DefaultException(
        prettyMessage: resp['message'],
        devMessage: e.message ?? '',
        code: e.response?.statusCode,
        error: resp['error'],
        status: resp['status'],
      );
    } 
    if (e.error is SocketException) {
      return NoInternetException(
        prettyMessage: ErrorMessages.noInternet,
        devMessage: '${e.message} - ${e.stackTrace}',
        stackTrace: e.stackTrace,
      );
    }
    if (e.error is FormatException) {
      return BadFormatException(
        prettyMessage: e.message ?? ErrorMessages.somethingWentWrong,
        devMessage: '${e.message} - ${e.stackTrace}',
        stackTrace: e.stackTrace,
      );
    }

    return switch (e.type) {
      DioExceptionType.badResponse => BadFormatException(
          prettyMessage: e.message ?? ErrorMessages.somethingWentWrong,
          devMessage: '${e.message} - ${e.stackTrace}',
          stackTrace: e.stackTrace,
        ),
      DioExceptionType.badCertificate => UnknownException(
          prettyMessage: e.message ?? ErrorMessages.somethingWentWrong,
          devMessage: '${e.message} - ${e.stackTrace}',
          stackTrace: e.stackTrace,
          code: e.response?.statusCode,
        ),
      DioExceptionType.unknown => UnknownException(
          prettyMessage: e.message ?? ErrorMessages.somethingWentWrong,
          devMessage: '${e.message} - ${e.stackTrace}',
          stackTrace: e.stackTrace,
          code: e.response?.statusCode,
        ),
      DioExceptionType.connectionError => NoInternetException(
          prettyMessage: ErrorMessages.noInternet,
          devMessage: e.message ?? '',
          stackTrace: e.stackTrace,
        ),
      DioExceptionType.sendTimeout => ClientNetworkException(
          prettyMessage: ErrorMessages.sendTimeOut,
          devMessage: e.message ?? '',
          stackTrace: e.stackTrace,
        ),
      DioExceptionType.connectionTimeout => ClientNetworkException(
          prettyMessage: ErrorMessages.connectionTimedOut,
          devMessage: e.message ?? '',
          stackTrace: e.stackTrace,
        ),
      DioExceptionType.receiveTimeout => ServerNetworkException(
          prettyMessage: ErrorMessages.sendTimeOut,
          devMessage: e.message ?? '',
          stackTrace: e.stackTrace,
          code: e.response?.statusCode,
        ),
      DioExceptionType.cancel => RequestCancelledException(
          prettyMessage: ErrorMessages.sendTimeOut,
          devMessage: e.message ?? '',
          stackTrace: e.stackTrace,
          code: e.response?.statusCode,
        ),
    };
  }
}
