import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomSheetTitle extends StatelessWidget {
  const CustomBottomSheetTitle({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(title ?? '',
        style: getBoldStyle(fontSize: 16.sp, color: ColorsManager.primaryDark));
  }
}