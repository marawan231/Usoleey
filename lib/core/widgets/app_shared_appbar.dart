
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SharedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SharedAppBar(
      {super.key, this.title, this.height, this.closeOntap, this.leading});

  final String? title;
  final double? height;
  final Widget? leading;
  final Function()? closeOntap;

  _buildTitle() {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 24.sp),
      child: Text(title ?? '',
          style: getBoldStyle(
            color: Colors.black,
            fontSize: 16.sp,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: AppBar(
        scrolledUnderElevation: 0,
        surfaceTintColor: ColorsManager.white,
        leading: leading ??
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                selectedTab == 1
                    ? {
                        selectedTab = 0,
                        Go.offNamed(NamedRoutes.layout),
                      }
                    : Go.back();
              },
            ),
        actions: [
          _buildTitle(),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16.r),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? 56.sp);
}
