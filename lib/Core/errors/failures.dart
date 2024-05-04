//Fixed File For All Projects

import 'package:dio/dio.dart';

abstract class Failuer {
  final String errMessage;

  Failuer({required this.errMessage});
}

class ServerFailure extends Failuer {
  ServerFailure({required super.errMessage});

  factory ServerFailure.DioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Recieve timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: 'Bad certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Request to ApiServer cancelled');
      case DioExceptionType.connectionError:
      // TODO: Handle this case.
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure(
              errMessage: 'Internet connection is not available');
        }
        return ServerFailure(errMessage: 'unknown error , please try again');
      default:
        return ServerFailure(
            errMessage: 'Oops Something went wrong, please try again');
    }
  }

  factory ServerFailure.fromResponse(int statucsCode, dynamic response) {
    if (statucsCode == 400 || statucsCode == 401 || statucsCode == 403) {
      return ServerFailure(errMessage: response['error']['message']);
    } else if (statucsCode == 404) {
      return ServerFailure(errMessage: 'Server not found');
    } else if (statucsCode == 500) {
      return ServerFailure(
          errMessage: 'internal server error, please try again');
    } else {
      return ServerFailure(
          errMessage: 'Oops Something went wrong, please try again');
    }
  }
}
