import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomSheetSubtitle extends StatelessWidget {
  const CustomBottomSheetSubtitle({super.key, this.subtitle});

  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(subtitle ?? '',
        textAlign: TextAlign.center,
        style:
            getRegularStyle(fontSize: 14.sp, color: ColorsManager.greyLight));
  }
}