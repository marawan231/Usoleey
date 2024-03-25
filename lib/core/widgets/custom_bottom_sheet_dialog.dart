import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../navigator/navigator.dart';
import '../theming/colors.dart';

customBottomSheetDialog(
    {required Widget body, bool isScrollControlled = false,double? height}) {
  showModalBottomSheet(
      context: Go.navigatorKey.currentContext!,
      isScrollControlled: isScrollControlled,
      isDismissible: false,
      enableDrag: false,

      clipBehavior: Clip.antiAliasWithSaveLayer,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40.r))),
      builder: (context) {
        return Container(
          height: height,
          decoration: BoxDecoration(
              color: ColorsManager.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(40.r))),
          padding: EdgeInsets.only(
              left: 24.sp,
              right: 24.sp,
              bottom: MediaQuery.of(context).viewInsets.bottom,
              top: 15.sp),
          width: double.infinity,
          child: Column(
            children: [Expanded(child: body)],
          ),
        );
      });
}
