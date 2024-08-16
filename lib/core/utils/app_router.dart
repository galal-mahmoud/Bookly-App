import 'package:bookly_app_v1/Features/home/data/repos/home_repo_implement.dart';
import 'package:bookly_app_v1/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app_v1/Features/search/presentation/views/search_view.dart';
import 'package:bookly_app_v1/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly_app_v1/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/presentation/manager/similer_books/similar_books_cubit.dart';
import '../../Features/home/presentation/views/book_details_view.dart';

abstract class AppRouter {
  static const kBookDetailsView = '/BookDetailsView';
  static const kHomeView = '/HomeView';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSearchView,
        builder: (context, state) {
          return const SearchView();
        },
      ),
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) {
          return const BookDetailsView();
        },
      ), GoRoute(
        path: kBookDetailsView,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImplement>()),
            child: const BookDetailsView(),
          );
        },
      ),
    ],
  );
}
