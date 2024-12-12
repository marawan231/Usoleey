import 'package:flutter/material.dart';

import '../theming/colors.dart';

class CustomBorderContainer extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  const CustomBorderContainer(
      {super.key, required this.child, this.color, this.margin, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            padding ?? EdgeInsets.symmetric(vertical: 14, horizontal: 10),
        margin: margin ?? EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
            color: color ?? ColorsManager.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: ColorsManager.grey)),
        child: child);
  }
}
