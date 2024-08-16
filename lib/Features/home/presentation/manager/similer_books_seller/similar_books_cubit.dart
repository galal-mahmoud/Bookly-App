import 'package:bloc/bloc.dart';
import 'package:bookly_app_v1/Features/home/data/repos/home_repo_implement.dart';
import 'package:flutter/cupertino.dart';
import '../../../data/models/book_model.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepoImplement) : super(SimilarBooksInitial());
  final HomeRepoImplement homeRepoImplement;
  Future<void> fetchSimilarBooks({required String categories}) async {
    var result =
        await homeRepoImplement.fetchSimilarBooksSeller(categories: categories);
    result.fold(
      (Failure) {
        emit(
          SimilarBooksFailure(errorMessage: Failure.errorMessage),
        );
      },
      (books) {
        emit(
          SimilarBooksSuccess(books),
        );
      },
    );
  }
}
