import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  const ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return const ServerFailure('Connection Timeout with Api server');
      case DioErrorType.sendTimeout:
        return const ServerFailure('Send Timeout with Api server');
      case DioErrorType.receiveTimeout:
        return const ServerFailure('Receive Timeout with Api server');
      case DioErrorType.badCertificate:
        return const ServerFailure('There bad certificate');
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioErrorType.cancel:
        return const ServerFailure('the request is canceled');
      case DioErrorType.connectionError:
        return const ServerFailure('There Connection error !');
      case DioErrorType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return const ServerFailure('No Internet Connection');
        }

        return const ServerFailure('Oops there is Error happened');
    }
  }


  

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    }

    if (statusCode == 404) {
      return const ServerFailure(
          'Your request not found , please try again later !');
    }

    if (statusCode == 500) {
      return const ServerFailure('Internal server error , please try later !');
    }

    return const ServerFailure(
        'Oops there is an Error , please try again later !');
  }
}
