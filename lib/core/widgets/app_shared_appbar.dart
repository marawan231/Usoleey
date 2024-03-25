import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SharedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SharedAppBar(
      {super.key,
      this.title,
      this.height,
      this.closeOntap,
      this.leading,
      this.bottom,
      this.withBottomRounded = true});

  final String? title;
  final double? height;
  final Widget? leading;
  final Function()? closeOntap;
  final PreferredSizeWidget? bottom;
  final bool withBottomRounded;

  _buildTitle() {
    return Padding(
        padding: EdgeInsetsDirectional.only(start: 12.sp),
        child: Text(title ?? '',
            style: getBoldStyle(color: Colors.black, fontSize: 16.sp)));
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      surfaceTintColor: ColorsManager.white,
      bottom: bottom,
      title: _buildTitle(),
      actions: [
        leading ??
            IconButton(
              icon: RotatedBox(
                  quarterTurns: 2,
                  child: Icon(Icons.arrow_back_ios, color: Colors.black)),
              onPressed: () {
                selectedTab == 1
                    ? {
                        selectedTab = 0,
                        Go.offNamed(NamedRoutes.layout),
                      }
                    : Go.back();
              },
            ),
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(withBottomRounded ? 16.r : 0)),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? 56.sp);
}
