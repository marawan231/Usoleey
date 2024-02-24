import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EmptyTicketsView extends StatelessWidget {
  const EmptyTicketsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(AssetsManager.emptyTickets),
          40.verticalSpace,
          Text(
            'لايوجد لديك تذاكر',
            style: getBoldStyle(fontSize: 16.sp, color: ColorsManager.primary),
          ),
          8.verticalSpace,
          Text('قم بإنشاء أول تذكرة لك وستظهر هنا',
              style: getRegularStyle(
                  fontSize: 14.sp, color: ColorsManager.greyLight)),
          40.verticalSpace,
          Container(
            width: 125.sp,
            height: 35.sp,
            decoration: BoxDecoration(
              color: ColorsManager.primary,
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: ColorsManager.white,
                  size: 16.sp,
                ),
                6.horizontalSpace,
                Text(
                  'إنشاء تذكرة',
                  style:
                      getBoldStyle(fontSize: 12.sp, color: ColorsManager.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
