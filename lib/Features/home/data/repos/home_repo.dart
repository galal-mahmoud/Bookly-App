import 'package:bookly_app_v1/Features/home/data/models/book_model.dart';
import 'package:bookly_app_v1/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
 Future<Either<Failure,List<BookModel>>> fetchBestSellerBooks();
 Future<Either<Failure, List<BookModel>>> fetchFeatureNewestBooks();
}