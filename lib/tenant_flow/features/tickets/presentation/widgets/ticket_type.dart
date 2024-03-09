import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketType extends StatelessWidget {
  const TicketType({super.key, required this.type});
  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 4.sp),
      decoration: BoxDecoration(
        color: ColorsManager.greyLighter,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Text(
        type,
        style: getBoldStyle(
          fontSize: 12.sp,
          color: ColorsManager.greyLight,
        ),
      ),
    );
  }
}