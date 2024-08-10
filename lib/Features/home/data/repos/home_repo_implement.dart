import 'package:bookly_app_v1/Features/home/data/repos/home_repo.dart';
import 'package:either_dart/either.dart';
import '../../../../core/errors/failure.dart';
import '../models/book_model.dart';

abstract class HomeRepoImplement implements HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetcthBestSellerBooks() {
    throw UnimplementedError();
  }
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {
    throw UnimplementedError();
  }
}