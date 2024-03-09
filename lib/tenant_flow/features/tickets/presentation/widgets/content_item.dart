import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContetntItem extends StatelessWidget {
  const ContetntItem({super.key, this.label, this.onPressed});
  final String? label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.sp,
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      decoration: BoxDecoration(
        color: ColorsManager.primaryLighter,
        // border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label ?? '',
              style: getBoldStyle(
                  fontSize: 12.sp, color: ColorsManager.primaryDark)),
          TextButton(
              onPressed: onPressed,
              child: Text(
                'تغيير',
                style: getBoldStyle(
                    fontSize: 12.sp, color: ColorsManager.primaryDark),
              )),
        ],
      ),
    );
  }
}
