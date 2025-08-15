import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);
}

void handleDioException(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServerFailure("Connection timeout with the server");
    case DioExceptionType.sendTimeout:
      throw ServerFailure("Send timeout occurred");
    case DioExceptionType.receiveTimeout:
      throw ServerFailure("Receive timeout occurred");
    case DioExceptionType.badCertificate:
      throw ServerFailure("Invalid security certificate");
    case DioExceptionType.cancel:
      throw ServerFailure("Request was cancelled");
    case DioExceptionType.connectionError:
      throw ServerFailure("No internet connection");
    case DioExceptionType.unknown:
      throw ServerFailure("An unexpected error occurred");

    case DioExceptionType.badResponse:
      final statusCode = e.response?.statusCode;
      switch (statusCode) {
        case 400:
          throw ServerFailure("Bad request");
        case 401:
          throw ServerFailure("Unauthorized access");
        case 403:
          throw ServerFailure("Forbidden access");
        case 404:
          throw ServerFailure("Resource not found");
        case 500:
          throw ServerFailure("Internal server error");
        default:
          throw ServerFailure(
              "Unexpected server error: status code $statusCode");
      }
  }
}
