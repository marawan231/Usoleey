import 'package:flutter/material.dart';

enum NamedRoutes {
  splash('/'),
  chooseAppLanguage('/chooseAppLanguage'),
  ;

  final String routeName;

  const NamedRoutes(this.routeName);
}

final List<Widget> layoutScreens = [
  //   const TransactionHistoryView(),
  // const HomeView(),
  // const ProfileView(),
];
