import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomServices extends StatelessWidget {
  const CustomServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: _buildServiceItem(
                title: 'طلب خدمة', icon: AssetsManager.service)),
        16.horizontalSpace,
        Expanded(
            child: _buildServiceItem(
                title: 'إرسال شكوى', icon: AssetsManager.sendComplain)),
      ],
    );
  }

  Widget _buildServiceItem({String? title, String? icon}) {
    return Container(
      // width: double.infinity,
      height: 116.sp,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: ColorsManager.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 50.sp,
              height: 50.sp,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorsManager.primaryLighter,
                // borderRadius: BorderRadius.circular(8.r),
              ),
              child: Transform.scale(
                scale: 0.5,
                child: SvgPicture.asset(
                  icon ?? '',
                  // ignore: deprecated_member_use
                  // color: ColorsManager.primary,
                  // width: 50.w,
                  // height: 50.h,
                ),
              )),
          8.verticalSpace,
          Text(title ?? '',
              style: getBoldStyle(
                fontSize: 14.sp,
                color: ColorsManager.primaryDark,
              )),
        ],
      ),
    );
  }
}
