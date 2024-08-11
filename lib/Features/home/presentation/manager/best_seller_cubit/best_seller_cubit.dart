import 'package:bloc/bloc.dart';
import 'package:bookly_app_v1/Features/home/data/repos/home_repo_implement.dart';
import 'package:flutter/cupertino.dart';

import '../../../data/models/book_model.dart';

part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit(this.homeRepoImplement) : super(BestSellerInitial());
  HomeRepoImplement homeRepoImplement;
  Future<void> fetchBestSeller()async {
    emit(BestSellerLoading());
    var result = await homeRepoImplement.fetchBestSellerBooks();
    result.fold((failure){
      emit(BestSellerFailure(failure.errorMessage));
    }, (books){
      BestSellerSuccess(books);
    },);
  }
}
