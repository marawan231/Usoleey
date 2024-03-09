import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/app_strings.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/utils/utils.dart';
import 'package:flutter_complete_project/tenant_flow/features/more/data/models/profile_item.dart';
import 'package:flutter_complete_project/generated/l10n.dart';

List<String> appLanguages = [
  S.current.arabic,
  S.current.english,
];

final List<Map<String, String>> onBoardingItems = [
  {
    'image': AssetsManager.onBoarding1,
    'title': AppStrings.onBoardingTitle1,
    'description': AppStrings.onBoardingDescription1,
    // 'bg': ImageAssets.onboardingBg1,
  },
  {
    'image': AssetsManager.onBoarding2,
    'title': AppStrings.onBoardingTitle2,
    'description': AppStrings.onBoardingDescription2,
    // 'bg': ImageAssets.onboardingBg1,
  },
  {
    'image': AssetsManager.onBoarding3,
    'title': AppStrings.onBoardingTitle3,
    'description': AppStrings.onBoardingDescription3,
    // 'bg': ImageAssets.onboardingBg1,
  },
];
List<ProfileItem> profileItems = [
  ProfileItem(
    title: S.current.accountInfo,
    icon: AssetsManager.user,
    onTap: () {
      Go.toNamed(NamedRoutes.accountInfo);
    },
  ),
  ProfileItem(
    title: S.current.notifications,
    icon: AssetsManager.bell,
    onTap: () {
      Go.toNamed(NamedRoutes.notifications);
    },
  ),
  ProfileItem(
    title: S.current.offers,
    icon: AssetsManager.percent,
    onTap: () {
      Go.toNamed(NamedRoutes.offers);
    },
  ),
  ProfileItem(
    title: S.current.language,
    icon: AssetsManager.globe,
    onTap: () {},
  ),
  ProfileItem(
    title: S.current.rateApp,
    icon: AssetsManager.star,
    onTap: () {},
  ),
  ProfileItem(
    title: S.current.helpAndSupport,
    icon: AssetsManager.helpCircle,
    onTap: () {
      Go.toNamed(NamedRoutes.helpAndSupport);
    },
  ),
  ProfileItem(
    title: S.current.termsAndConditions,
    icon: AssetsManager.bookOpen,
    onTap: () {
      Go.toNamed(NamedRoutes.termsAndConditions);
    },
  ),
  //about
  ProfileItem(
    title: S.current.aboutApp,
    icon: AssetsManager.info,
    onTap: () {
      Go.toNamed(NamedRoutes.aboutApp);
    },
  ),
  ProfileItem(
    title: S.current.logout,
    icon: AssetsManager.logOut,
    onTap: () {
      showIosDialog(
        context: Go.navigatorKey.currentContext!,
        title: S.current.logout,
        okText: S.current.exit,
        cancelText: S.current.cancel,
        ok: () {
          // Go.toNamed(NamedRoutes.login);
        },
        cancel: () {},
        content: S.current.areYouWantToLogout,
      );
    },
  )
];
