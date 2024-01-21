import 'package:flutter_complete_project/core/res/app_strings.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
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
