import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/routing/app_router.dart';
import 'package:flutter_complete_project/core/routing/routes.dart';
import 'package:flutter_complete_project/core/theming/theme_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/internet/internet_connection_checker.dart';

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // MyApp._internal();

  // static final MyApp _instance = MyApp._internal(); // single instance

  // factory MyApp() => _instance; // factory to get single instance
  AppRouter routeGenerator = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, state) {
        return MaterialApp(
            title: 'Usooley',
            debugShowCheckedModeBanner: false,
            onGenerateRoute: routeGenerator.generateRoute,
            initialRoute: Routes.splashScreen,
            theme: appTheme,
            builder: (context, child) {
              return MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaler: const TextScaler.linear(1.0)),
                child: InternetConnectionChecker(
                  child: child,
                ),
              );
            });
      },
    );
  }
}
