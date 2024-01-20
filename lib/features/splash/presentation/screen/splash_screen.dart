import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer(const Duration(seconds: 3), _goNext);
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  void _goNext() async {
   
    _timer.cancel();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsManager.darkBlue,
      // body: Image.asset(AssetsManager.splashView,
          // fit: BoxFit.cover, width: double.infinity, height: double.infinity),
    );
  }
}
