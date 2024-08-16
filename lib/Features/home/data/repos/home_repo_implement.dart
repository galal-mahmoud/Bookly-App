import 'package:bookly_app_v1/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app_v1/core/utils/api_services.dart';
import 'package:dio/dio.dart';
import '../../../../core/errors/failure.dart';
import '../models/book_model.dart';
import 'package:dartz/dartz.dart';
class HomeRepoImplement implements HomeRepo{
  ApiServices apiServices;
  HomeRepoImplement(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureNewestBooks() async{
    try {
      var data = await apiServices.get(endPoint: 'volumes?q=subject:programming');
      List<BookModel> books = [];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }else{
        return left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async{
    try {
      var data = await apiServices.get(endPoint: 'volumes?q=subject:programming');
      List<BookModel> books = [];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }else{
        return left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }
}