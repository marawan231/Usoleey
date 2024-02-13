import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RentTimeContainer extends StatelessWidget {
  const RentTimeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 24.sp,
      padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 4.sp),
      margin: EdgeInsetsDirectional.symmetric(horizontal: 16.sp),
      // width: double.infinity,
      decoration: BoxDecoration(
        color: ColorsManager.green,
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.calendar_today_outlined,
            color: ColorsManager.greenDark,
            size: 16.sp,
          ),
          4.horizontalSpace,
          Text(
            'موعد دفع الإيجار القادم: ١٣ فبراير، ٢٠٢٣',
            style:
                getBoldStyle(fontSize: 12.sp, color: ColorsManager.greenDark),
          ),
        ],
      ),
    );
  }
}
