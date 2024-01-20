import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/features/choose_language/logic/cubit/choose_language_cubit.dart';
import 'package:flutter_complete_project/features/choose_language/presentation/screen/choose_app_language.dart';
import 'package:flutter_complete_project/features/splash/presentation/screen/splash_screen.dart';

import 'named_routes.dart';
import 'page_router/imports_page_router_builder.dart';

class RouterGenerator {
  //choose language cubit
  static late ChooseLanguageCubit chooseLanguageCubit;

  RouterGenerator() {
    //    globalCubit = getIt<GlobalCubit>();

    chooseLanguageCubit = getIt<ChooseLanguageCubit>();
  }

  static final PageRouterBuilder _pageRouter = PageRouterBuilder();

   Route? getRoute(RouteSettings settings) {
    final namedRoute =
        NamedRoutes.values.firstWhere((e) => e.routeName == settings.name);
    switch (namedRoute) {
      case NamedRoutes.splash:
        return _pageRouter.build(const SplashView(), settings: settings);
      case NamedRoutes.chooseAppLanguage:
        return _pageRouter.build(
            BlocProvider.value(
              value: chooseLanguageCubit,
              child: ChooseAppLanguageView(),
            ),
            settings: settings);

      // return _pageRouter.build(TransactionHistoryView(), settings: settings);
    }
  }
}
