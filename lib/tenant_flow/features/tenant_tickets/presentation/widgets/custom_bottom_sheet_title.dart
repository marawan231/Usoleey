import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';

class CustomBottomSheetTitle extends StatelessWidget {
  const CustomBottomSheetTitle({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? '',
      style: getBoldStyle(fontSize: 16, color: ColorsManager.primaryDark),
      textAlign: TextAlign.center,
    );
  }
}
