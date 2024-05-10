import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_complete_project/core/constants/constants.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/helpers/cache_helper.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/navigator/route_generator.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/shared_cubits/user_cubit/user_cubit.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/tenant_flow/features/choose_language/logic/cubit/choose_language_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/data/models/auth_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';

import '../../../../../core/notification/notification_service.dart';
import '../../../../../generated/l10n.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late Timer _timer;
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    NotificationService().setupNotifications();
    NotificationNavigator(onRouting: (message) {});
    _timer = Timer(const Duration(seconds: 2), _goNext);
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ));
  }

  void _goNext() async {
    _timer.cancel();
    // await Go.offAllNamed(NamedRoutes.chooseAppLanguage);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);

    Go.offAllNamed(NamedRoutes.chooseAppLanguage);

    String? language = CacheHelper.getData(key: 'language');
    getIt<ChooseLanguageCubit>().changeLanguage(language!);

    String? accessToken = CacheHelper.getData(key: 'token');
    String? userModel = CacheHelper.getData(key: 'userData');

    if (userModel != null && accessToken != null) {
      UserModel user = UserModel.fromJson(json.decode(userModel));
      getIt<UserCubit>().updateUser(user);
      token = accessToken;
      if (user.role == 'OWNER') {
        Go.offAllNamed(NamedRoutes.ownerLayout);
      } else {
        Go.offAllNamed(NamedRoutes.tenantLayout);
      }
    } else {
      if (language != null) {
        Go.offAllNamed(NamedRoutes.onBoarding);
      } else {
        Go.offAllNamed(NamedRoutes.chooseAppLanguage);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.white,
      body: Center(
        child: SlideTransition(
          position: _offsetAnimation,
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: Image.asset(
              AssetsManager.appLogo,
              fit: BoxFit.cover,
              width: 322.sp,
              height: 322.sp,
            ),
          ),
        ),
      ),

      // body: Image.asset(AssetsManager.splashView,
      // fit: BoxFit.cover, width: double.infinity, height: double.infinity),
    );
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }
}
