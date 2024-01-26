import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/features/choose_language/logic/cubit/choose_language_cubit.dart';
import 'package:flutter_complete_project/features/choose_language/presentation/screen/choose_app_language_view.dart';
import 'package:flutter_complete_project/features/home/presentation/screens/home_screen.dart';
import 'package:flutter_complete_project/features/home/presentation/screens/layout_view.dart';
import 'package:flutter_complete_project/features/login/presentation/screens/login_view.dart';
import 'package:flutter_complete_project/features/notifications/presentation/screens/notifications_view.dart';
import 'package:flutter_complete_project/features/on_boarding/logic/cubit/onboarding_cubit.dart';
import 'package:flutter_complete_project/features/on_boarding/presentation/views/on_boarding_views_imports.dart';
import 'package:flutter_complete_project/features/splash/presentation/screen/splash_screen.dart';

import 'named_routes.dart';
import 'page_router/imports_page_router_builder.dart';

class RouterGenerator {
  //choose language cubit
  static late ChooseLanguageCubit chooseLanguageCubit;
  //on boarding cubit
  static late OnboardingCubit onboardingCubit;

  RouterGenerator() {
    chooseLanguageCubit = getIt<ChooseLanguageCubit>();
    onboardingCubit = getIt<OnboardingCubit>();
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
      case NamedRoutes.onBoarding:
        return _pageRouter.build(
            BlocProvider.value(
              value: onboardingCubit,
              child: OnBoardingView(),
            ),
            settings: settings);
      //login
      case NamedRoutes.login:
        return _pageRouter.build(const LoginView(), settings: settings);
      //layout
      case NamedRoutes.layout:
        return _pageRouter.build(const LayoutView(), settings: settings);
      //home
      case NamedRoutes.home:
        return _pageRouter.build(const HomeScreen(), settings: settings);
      //notifications
      case NamedRoutes.notifications:
        return _pageRouter.build(const NotificationsView(), settings: settings);
    }
  }
}
