import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BillItem extends StatelessWidget {
  const BillItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: ColorsManager.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
        side: BorderSide(
          color: ColorsManager.grey,
        ),
      ),
      contentPadding: EdgeInsetsDirectional.only(
          start: 10.sp, end: 10.sp, top: 10.sp, bottom: 10.sp),
      leading: Container(
        width: 50.sp,
        height: 50.sp,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorsManager.primaryLighter,
          // borderRadius: BorderRadius.circular(8.r),
        ),
        child: Icon(
          Icons.notifications,
          color: ColorsManager.primary,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(bottom: 8.sp),
        child: Text(
          'Due on 12/12/2021',
          style: getRegularStyle(
            fontSize: 12.sp,
            color: ColorsManager.greyLight,
          ),
        ),
      ),
      subtitle: Text(
        'Invoice #123',
        style: getBoldStyle(fontSize: 16.sp),
      ),
      horizontalTitleGap: 8,
      trailing: SvgPicture.asset(
        AssetsManager.pdf,
        width: 28.sp,
        height: 28.sp,
        fit: BoxFit.cover,
      ),
    );
  }
}