import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class CustomBorderContainer extends StatelessWidget {
  final Widget child;

  const CustomBorderContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 10.w),
        margin: EdgeInsets.symmetric(horizontal: 24.w),
        decoration: BoxDecoration(
            color: ColorsManager.white,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: ColorsManager.grey)),
        child: child);
  }
}
