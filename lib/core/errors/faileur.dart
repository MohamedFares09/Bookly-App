import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);
}

Failure handleDioException(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      return ServerFailure("Connection timeout with the server");
    case DioExceptionType.sendTimeout:
      return ServerFailure("Send timeout occurred");
    case DioExceptionType.receiveTimeout:
      return ServerFailure("Receive timeout occurred");
    case DioExceptionType.badCertificate:
      return ServerFailure("Invalid security certificate");
    case DioExceptionType.cancel:
      return ServerFailure("Request was cancelled");
    case DioExceptionType.connectionError:
      return ServerFailure("No internet connection");
    case DioExceptionType.unknown:
      return ServerFailure("An unexpected error occurred");

    case DioExceptionType.badResponse:
      final statusCode = e.response?.statusCode;
      switch (statusCode) {
        case 400:
          return ServerFailure("Bad request");
        case 401:
          return ServerFailure("Unauthorized access");
        case 403:
          return ServerFailure("Forbidden access");
        case 404:
          return ServerFailure("Resource not found");
        case 500:
          return ServerFailure("Internal server error");
        default:
          return ServerFailure(
              "Unexpected server error: status code $statusCode");
      }
  }
}
