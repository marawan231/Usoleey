import 'package:flutter_complete_project/core/helpers/cache_helper.dart';
import 'package:flutter_complete_project/core/network_service/dio_setup.dart';
import 'package:flutter_complete_project/features/choose_language/logic/cubit/choose_language_cubit.dart';
import 'package:flutter_complete_project/features/home/data/repository/home_repository.dart';
import 'package:flutter_complete_project/features/home/data/web_service/home_web_service.dart';
import 'package:flutter_complete_project/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/features/login/data/repository/auth_repository.dart';
import 'package:flutter_complete_project/features/login/data/web_service/auth_web_service.dart';
import 'package:flutter_complete_project/features/login/logic/cubit/auth_cubit.dart';
import 'package:flutter_complete_project/features/on_boarding/logic/cubit/onboarding_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Cache Helper
  getIt.registerLazySingleton<CacheHelper>(() => CacheHelper(
      
  ));
  // choose language cubit
  getIt.registerLazySingleton<ChooseLanguageCubit>(() => ChooseLanguageCubit());
  //on boarding
  getIt.registerLazySingleton<OnboardingCubit>(() => OnboardingCubit());
  // AuthCubit
  getIt.registerLazySingleton<AuthCubit>(() => AuthCubit(getIt<AuthRepository>()));
  // AuthRepository
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository(getIt<AuthWebService>()));
  // AuthWebService
  getIt.registerLazySingleton<AuthWebService>(() => AuthWebService(dio));
  //home web services
  getIt.registerLazySingleton<HomeWebServices>(() => HomeWebServices(dio));
  // home repository
  getIt.registerLazySingleton<HomeRepository>(() => HomeRepository(homeWebServices: getIt<HomeWebServices>()));
  // HomeCubit
  getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(getIt<HomeRepository>()));
  // Dio & ApiService
  // Dio dio = setupDio();
  // getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
}
