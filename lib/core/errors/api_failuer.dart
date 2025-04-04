import 'package:dio/dio.dart';

abstract class ApiFailure {
  final String message;
  const ApiFailure(this.message);
}

class ServerFailure extends ApiFailure {
  const ServerFailure({required String message}) : super(message);

  factory ServerFailure.fromDioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: 'Connection Timeout with API server');

      case DioExceptionType.sendTimeout:
        return ServerFailure(message: 'Send Timeout with API server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: 'Receive Timeout with API server');

      case DioExceptionType.badCertificate:
        return ServerFailure(message: 'Bad Certificate');

      case DioExceptionType.badResponse:
        if (dioError.response != null) {
          return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
        }
        return ServerFailure(message: 'Bad Response, but no data available');

      case DioExceptionType.cancel:
        return ServerFailure(message: 'Request Cancelled');

      case DioExceptionType.connectionError:
        return ServerFailure(message: 'Connection Error');

      case DioExceptionType.unknown:
        if (dioError.message != null && dioError.message!.contains('SocketException')) {
          return ServerFailure(message: 'No Internet Connection');
        }
        return ServerFailure(message: 'Unexpected Error Occurred');
        
    }
  }
  factory ServerFailure.fromResponse(int status, dynamic response) {
    if (status == 400 || status == 401 || status == 403) {
      return ServerFailure(message: response['error']['massage']);
    } else if (status == 404) {
      return ServerFailure(message: 'your request not found, Please try later');
    } else if (status == 500) {
      return ServerFailure(message: 'Internal Server Error,Please try later');
    } else {
      return ServerFailure(
          message: 'Oops! Something went wrong, Please try later');
    }
  }
 
}
