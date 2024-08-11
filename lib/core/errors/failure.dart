
import 'package:dio/dio.dart';

abstract class Failure{
  final String errorMessage;
  Failure({required this.errorMessage});
}

class ServerFailure extends Failure{
  ServerFailure({required super.errorMessage});
  factory ServerFailure.fromDioException(DioException dioException){
    switch(dioException.type){
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: 'Connection timeout, please try later');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send timeout, please try later');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive timeout, please try later');
      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: 'Bad certificate, please try later');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: 'Request to ApiServer was canceled, please try again');
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: 'There is a problem with internet connection, please try again');
      case DioExceptionType.unknown:
        if(dioException.message!.contains('SocketException')){
          return ServerFailure(errorMessage: 'Internet connection drop, please try again');
        }else{
          return ServerFailure(errorMessage: 'UnExpected error, please try again');
        }
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response){
    if(statusCode == 400 || statusCode == 401 || statusCode == 403){
      return ServerFailure(errorMessage: response['error']['message']);
    }else if(statusCode == 404){
      return ServerFailure(errorMessage: 'Your request not found, please try later');
    }else if(statusCode == 500){
      return ServerFailure(errorMessage: 'There is a problem with internet sever, please try later');
    }else{
      return ServerFailure(errorMessage: 'Oops there was an error, please try later');
    }
  }
}