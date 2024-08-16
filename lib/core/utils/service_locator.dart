import 'package:bookly_app_v1/Features/home/data/repos/home_repo_implement.dart';
import 'package:bookly_app_v1/core/utils/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator(){
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImplement>(HomeRepoImplement(
    getIt.get<ApiServices>()
  ));
}