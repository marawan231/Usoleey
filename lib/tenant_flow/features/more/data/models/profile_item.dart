import 'package:flutter/material.dart';

class ProfileItem {
  final String? title;
  final String? icon;

  final Function()? onTap;
  final Widget? trailing;

  ProfileItem({this.title, this.icon, this.onTap, this.trailing});
}
