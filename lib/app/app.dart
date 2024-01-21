import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/navigator/route_generator.dart';
import 'package:flutter_complete_project/core/theming/theme_manager.dart';

// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/internet/internet_connection_checker.dart';
import '../generated/l10n.dart';

final gloScaffoldMessKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatefulWidget {
  const MyApp._internal();

  static const MyApp _instance = MyApp._internal(); // single instance

  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

// RouteGenerator routeGenerator = RouteGenerator();

class _MyAppState extends State<MyApp> {
  RouterGenerator routeGenerator = RouterGenerator();

  @override
  Widget build(BuildContext context) {
    // initGetIt();

    return ScreenUtilInit(
        designSize: const Size(375, 812),
        useInheritedMediaQuery: true,
        minTextAdapt: true,
        builder: (context, state) {
          return MaterialApp(
              locale: Locale('ar'),
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                // MonthYearPickerLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              onGenerateRoute: routeGenerator.getRoute,
              theme: appTheme,
              navigatorKey: Go.navigatorKey,
              scaffoldMessengerKey: gloScaffoldMessKey,
              // darkTheme: MyThemes.buyerTheme,
              // initialRoute: Routes.splashRoute,
              initialRoute: NamedRoutes.splash.routeName,
              builder: (context, child) {
                return MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(textScaler: TextScaler.linear(1.0)),
                  child: InternetConnectionChecker(
                    child: child!,
                  ),
                );
              });
        });
  }
}
