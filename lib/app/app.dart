import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/navigator/route_generator.dart';
import 'package:flutter_complete_project/core/theming/theme_manager.dart';
import 'package:responsive_framework/responsive_framework.dart';

// ignore: unused_import
import 'package:flutter_complete_project/tenant_flow/features/choose_language/logic/cubit/choose_language_cubit.dart';

// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';

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
    return BlocProvider.value(
      value: getIt<ChooseLanguageCubit>(),
      child: BlocBuilder<ChooseLanguageCubit, ChooseLanguageState>(
        builder: (context, state) {
          return ResponsiveBreakpoints.builder(
            breakpoints: [
              const Breakpoint(start: 0, end: 450, name: MOBILE),
              const Breakpoint(start: 451, end: 800, name: TABLET),
              const Breakpoint(start: 801, end: 1920, name: DESKTOP),
              const Breakpoint(
                start: 1921,
                end: double.infinity,
                name: '4K',
              ),
            ],
            child: MaterialApp(
                locale: state.language,
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
                }),
          );
        },
      ),
    );
  }
}
