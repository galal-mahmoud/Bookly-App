import 'package:dio/dio.dart';

class ApiServices{
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  Dio dio;
  ApiServices(this.dio);
  Future<Map<String, dynamic>> get({required endPoint})async{
   Response response = await dio.get('$_baseUrl$endPoint');
   return response.data;
  }
}