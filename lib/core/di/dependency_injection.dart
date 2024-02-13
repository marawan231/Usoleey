import 'package:flutter_complete_project/core/helpers/cache_helper.dart';
import 'package:flutter_complete_project/features/choose_language/logic/cubit/choose_language_cubit.dart';
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
  // Dio & ApiService
  // Dio dio = setupDio();
  // getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
}
