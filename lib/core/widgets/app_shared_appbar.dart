import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SharedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SharedAppBar({super.key, this.title, this.height, this.closeOntap});

  final String? title;
  final double? height;
  final Function()? closeOntap;

  _buildTitle() {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 24.sp, top: 56.sp),
      child: Text('فواتيري',
          style: getBoldStyle(
            color: Colors.black,
            fontSize: 22.sp,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 109.sp,
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: _buildTitle(),
      // actions: _buildActions(),
      // leading: _buildLeading(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? 109.sp);
}
