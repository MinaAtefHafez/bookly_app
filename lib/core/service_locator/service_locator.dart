


 import 'package:bookly_app/core/api_services/api_sevices.dart';
import 'package:bookly_app/features/main/data/repo/home_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/main/data/repo/home_repo_impl.dart';
  
  final getIt = GetIt.instance;

 class ServiceLocator {
  

    void setup() {
         getIt.registerLazySingleton(() => Dio() );
         getIt.registerLazySingleton<ApiServices>(() => DioHelper(getIt()) );
         getIt.registerLazySingleton<HomeRepo>(() => HomeRepoImpl(getIt()));
   }
 }