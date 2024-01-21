import 'package:flutter/material.dart';

enum NamedRoutes {
  splash('/'),
  chooseAppLanguage('/chooseAppLanguage'),
  //onBoarding
  onBoarding('/onBoarding'),
  //login
  login('/login'),
  ;

  final String routeName;

  const NamedRoutes(this.routeName);
}

final List<Widget> layoutScreens = [
  //   const TransactionHistoryView(),
  // const HomeView(),
  // const ProfileView(),
];
