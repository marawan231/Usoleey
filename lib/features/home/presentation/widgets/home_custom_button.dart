import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCustomButton extends StatelessWidget {
  const HomeCustomButton({super.key, this.isAddButton});

  final bool? isAddButton;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Go.toNamed(NamedRoutes.propertyDetails);
      },
      child: Container(
        margin: EdgeInsetsDirectional.only(top: 16.sp),
        width: double.infinity,
        height: 35.sp,
        // color: ColorsManager.greyLight,
        decoration: BoxDecoration(
          color: ColorsManager.white,
          borderRadius: BorderRadius.circular(100.r),
          border: Border.all(color: ColorsManager.primaryDark),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Visibility(
              visible: isAddButton ?? false,
              child: Padding(
                padding: EdgeInsetsDirectional.only(top: 2.sp, end: 8.sp),
                child: Icon(
                  Icons.add,
                  size: 12.sp,
                ),
              ),
            ),
            Text(
              'عرض التفاصيل',
              style: getBoldStyle(
                  fontSize: 12.sp, color: ColorsManager.primaryDark),
            ),
          ],
        ),
      ),
    );
  }
}
