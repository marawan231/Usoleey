import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/app_strings.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/utils/utils.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
import 'package:flutter_complete_project/tenant_flow/features/choose_language/logic/cubit/choose_language_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/more/data/models/profile_item.dart';

List<String> appLanguages = [
  S.current.arabic,
  S.current.english,
];

final List<Map<String, String>> onBoardingItems = [
  {
    'image': AssetsManager.onBoarding1,
    'title': S.current.onBoardingTitle1,
    'description': S.current.onBoardingSubtitle1,
    // 'bg': ImageAssets.onboardingBg1,
  },
  {
    'image': AssetsManager.onBoarding2,
    'title': S.current.onBoardingTitle2,
    'description': S.current.onBoardingSubtitle2,
    // 'bg': ImageAssets.onboardingBg1,
  },
  {
    'image': AssetsManager.onBoarding3,
    'title': S.current.onBoardingTitle3,
    'description': S.current.onBoardingSubtitle3,
    // 'bg': ImageAssets.onboardingBg1,
  },
];
List<ProfileItem> profileItems = [
  ProfileItem(
    title: S.of(Go.navigatorKey.currentContext!).accountInfo,
    icon: AssetsManager.user,
    onTap: () {
      Go.toNamed(NamedRoutes.accountInfo);
    },
  ),
  ProfileItem(
    title: S.of(Go.navigatorKey.currentContext!).notifications,
    icon: AssetsManager.bell,
    onTap: () {
      Go.toNamed(NamedRoutes.ownerNotification);
    },
  ),
  ProfileItem(
    title: S.of(Go.navigatorKey.currentContext!).offers,
    icon: AssetsManager.percent,
    onTap: () {
      Go.toNamed(NamedRoutes.offers);
    },
  ),
  ProfileItem(
      title: S.of(Go.navigatorKey.currentContext!).language,
      icon: AssetsManager.globe,
      onTap: null,
      trailing: BlocBuilder<ChooseLanguageCubit, ChooseLanguageState>(
        builder: (context, state) {
          return DropdownButton<String>(
            value: state.language!.languageCode,
            items: [
              DropdownMenuItem<String>(child: Text('عربي'), value: 'ar'),
              DropdownMenuItem<String>(child: Text('English'), value: 'en'),
            ],
            onChanged: (String? value) {
              getIt<ChooseLanguageCubit>().changeLanguage(value!);
            },
          );
        },
      )),
  ProfileItem(
    title: S.of(Go.navigatorKey.currentContext!).rateApp,
    icon: AssetsManager.star,
    onTap: () {},
  ),
  ProfileItem(
    title: S.of(Go.navigatorKey.currentContext!).helpAndSupport,
    icon: AssetsManager.helpCircle,
    onTap: () {
      Go.toNamed(NamedRoutes.helpAndSupport);
    },
  ),
  ProfileItem(
    title: S.of(Go.navigatorKey.currentContext!).termsAndConditions,
    icon: AssetsManager.bookOpen,
    onTap: () {
      Go.toNamed(NamedRoutes.termsAndConditions);
    },
  ),
  //about
  ProfileItem(
    title: S.of(Go.navigatorKey.currentContext!).aboutApp,
    icon: AssetsManager.info,
    onTap: () {
      Go.toNamed(NamedRoutes.aboutApp);
    },
  ),
  ProfileItem(
    title: S.of(Go.navigatorKey.currentContext!).logout,
    icon: AssetsManager.logOut,

    onTap: () {
      showIosDialog(
        context: Go.navigatorKey.currentContext!,
        title: S.of(Go.navigatorKey.currentContext!).logout,
        okText: S.of(Go.navigatorKey.currentContext!).exit,
        cancelText: S.of(Go.navigatorKey.currentContext!).cancel,
        ok: () {
          clearAllData();
          Go.offAllNamed(NamedRoutes.login);
          // Go.toNamed(NamedRoutes.login);
        },
        cancel: () {},
        content: S.of(Go.navigatorKey.currentContext!).areYouWantToLogout,
      );
    },
  )
];
