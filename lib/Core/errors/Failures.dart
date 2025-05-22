import 'package:dio/dio.dart';

abstract class Failure {
  final String errMassege;

  Failure(this.errMassege);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMassege);

  factory ServerFailure.fromdioerror(DioError DioError) {
    switch (DioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connectio timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        throw UnimplementedError();
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            DioError.response!.statusCode!, DioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request with ApiServer was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure('no internet connection');
      case DioExceptionType.unknown:
        throw UnimplementedError();
    }
  }
  factory ServerFailure.fromResponse(int stauscode, dynamic respone) {
    if (stauscode == 400 || stauscode == 401 || stauscode == 403) {
      return ServerFailure(respone['error']['message']);
    } else if (stauscode == 404) {
      return ServerFailure('Not Faound');
    } else if (stauscode == 500) {
      return ServerFailure('Server Error ,Please try again later !');
    } else {
      return ServerFailure('There was an  Error ,Please try again later !');
    }
  }
}
