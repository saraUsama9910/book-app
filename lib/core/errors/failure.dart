import 'package:dio/dio.dart';

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

      
      case DioExceptionType.cancel:
        return ServerFailure('Request to Api Server was Canceld');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection Error ,Please Try Again Later');
      case DioExceptionType.unknown:
        return ServerFailure('Oops there was an error ,Please Try Again Later');
    }
  }
  ServerFailure(super.message);
}
