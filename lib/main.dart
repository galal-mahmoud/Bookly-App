import 'package:bookly_app_v1/Features/home/presentation/manager/best_seller_cubit/best_seller_cubit.dart';
import 'package:bookly_app_v1/Features/home/presentation/manager/feature_Newest_books/feature_books_cubit.dart';
import 'package:bookly_app_v1/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Features/home/data/repos/home_repo_implement.dart';
import 'core/utils/app_router.dart';
import 'core/utils/service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBooksCubit(
            getIt.get<HomeRepoImplement>(),
          )..featureNewestBooks()
        ),
        BlocProvider(
          create: (context) => BestSellerCubit(
            getIt.get<HomeRepoImplement>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
