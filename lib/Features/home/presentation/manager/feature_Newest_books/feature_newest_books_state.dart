part of 'feature_newest_books_cubit.dart';

@immutable
sealed class FeatureBooksState {}

final class FeatureBooksInitial extends FeatureBooksState {}
final class FeatureBooksLoading extends FeatureBooksState {}
final class FeatureBooksSuccess extends FeatureBooksState {
  final List<BookModel> books;
  FeatureBooksSuccess(this.books);
}
final class FeatureBooksFailure extends FeatureBooksState {
  final errorMessage;
  FeatureBooksFailure(this.errorMessage);
}
