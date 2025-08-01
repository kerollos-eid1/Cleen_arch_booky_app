// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioExciption(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout');
      case DioExceptionType.badResponse:
        return ServerFailure.fromRespone(
          e.response!.statusCode,
          e.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Request Cancelled');
      case DioExceptionType.unknown:
      default:
        return ServerFailure('Unknown Error: ${e.message}');
    }
  }

  factory ServerFailure.fromRespone(int? statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure('your request not found , please try again');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error , please try again later');
    } else if (statusCode == 401 || statusCode == 403 || statusCode == 400) {
      return ServerFailure(response['error']['message']);
    } else {
      return ServerFailure('Something went wrong , please try again later');
    }
  }
}
