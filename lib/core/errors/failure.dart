import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection TimeOut ,Error with API');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send TimeOut ,Please Try Again Later');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recieved TimeOut ,Error with API');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate ,Error with API');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to Api Server was Canceld');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection Error ,Please Try Again Later');
      case DioExceptionType.unknown:
        return ServerFailure('Oops there was an error ,Please Try Again Later');
    }
  }
  ServerFailure(super.message);
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure('Your Request was not found,Please Try Again Later');
    } else if (statusCode == 500) {
      return ServerFailure(
          'There Was Problem With Server,Please Try Again Later');
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else {
      return ServerFailure('Oops there was an error ,Please Try Again Later');
    }
  }
}
