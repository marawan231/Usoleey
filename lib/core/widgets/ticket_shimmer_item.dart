import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/extensions/seperator_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import 'custom_shimmer.dart';

class TicketShimmerItem extends StatelessWidget {
  const TicketShimmerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorsManager.white,
          border: Border.all(color: ColorsManager.grey, width: 1.sp),
          borderRadius: BorderRadius.circular(8.r)),
      width: MediaQuery.of(context).size.width -
          24.w -
          MediaQuery.of(context).size.width * 0.15,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomShimmer(height: 24.h, width: 112.w),
              8.horizontalSpace,
              CustomShimmer(height: 24.h, width: 49.w),
              Spacer(),
              CustomShimmer(height: 16.h, width: 48.w),
            ],
          ),
          Row(
            children: [
              CustomShimmer(
                height: 35.h,
                width: 35.w,
                radius: 30,
              ),
              8.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomShimmer(height: 12.h, width: 100.w),
                  6.verticalSpace,
                  CustomShimmer(height: 12.h, width: 180.w),
                  10.verticalSpace,
                ],
              ),
            ],
          ),
          Center(child: CustomShimmer(height: 36.h, width: double.infinity)),
        ].joinWith(15.verticalSpace),
      ),
      // child:
    );
  }
}
