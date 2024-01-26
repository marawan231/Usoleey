import 'package:flutter/material.dart';
import 'package:flutter_complete_project/features/home/presentation/screens/home_screen.dart';

enum NamedRoutes {
  splash('/'),
  chooseAppLanguage('/chooseAppLanguage'),
  //onBoarding
  onBoarding('/onBoarding'),
  //login
  login('/login'),
  //layout
  layout('/layout'),
  //home
  home('/home'),
  //notifications
  notifications('/notifications'),
  ;

  final String routeName;

  const NamedRoutes(this.routeName);
}


