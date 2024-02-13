import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersItem extends StatelessWidget {
  const OffersItem({super.key, this.height, this.width});

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 180.sp,
      width: width ?? double.infinity,
      // color: Colors.red,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: ColorsManager.grey,
        ),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r),
              topRight: Radius.circular(8.r),
            ),
            child: Image.asset(
              AssetsManager.tempBuilding,
              height: 120.sp,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 8.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'شقة سكنية في ارقى أحياء الرياض',
                  style: getBoldStyle(fontSize: 14.sp),
                ),
                8.verticalSpace,
                Text(
                  '١٢٠٠ ريال/شهري',
                  style: getBoldStyle(
                    fontSize: 12.sp,
                    color: ColorsManager.primary,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
