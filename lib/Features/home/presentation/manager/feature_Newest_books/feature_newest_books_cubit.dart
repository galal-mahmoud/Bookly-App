import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import '../../../data/models/book_model.dart';
import '../../../data/repos/home_repo_implement.dart';

part 'feature_newest_books_state.dart';

class FeatureNewestBooksCubit extends Cubit<FeatureBooksState> {
  FeatureNewestBooksCubit(this.homeRepoImplement)
      : super(FeatureBooksInitial());
  final HomeRepoImplement homeRepoImplement;
  Future<void> featureNewestBooks() async {
    emit(
      FeatureBooksLoading(),
    );
    var result = await homeRepoImplement.fetchFeatureNewestBooks();
    result.fold(
      (failure) {
        emit(
          FeatureBooksFailure(failure.errorMessage),
        );
      },
      (books) {
        emit(
          FeatureBooksSuccess(books),
        );
      },
    );
  }
}
