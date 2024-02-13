import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketStatus extends StatelessWidget {
  const TicketStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 4.sp),
        decoration: BoxDecoration(
          color: ColorsManager.green,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          children: [
            Icon(
              Icons.circle,
              color: ColorsManager.greenDark,
              size: 8.sp,
            ),
            4.horizontalSpace,
            Text(
              'تم الحل',
              style: getBoldStyle(
                fontSize: 12.sp,
                color: ColorsManager.greenDark,
              ),
            ),
          ],
        ));
  }
}