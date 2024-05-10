import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/navigator/navigator.dart';

class CustomCloseButton extends StatelessWidget {
  const CustomCloseButton({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap?? () {
        Go.back();
      },
      child: Container(
        width: 30.sp,
        height: 30.sp,
        decoration: BoxDecoration(
          color: ColorsManager.backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.close,
          color: ColorsManager.primary,
          size: 16.sp,
        ),
      ),
    );
  }
}
