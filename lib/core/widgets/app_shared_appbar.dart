import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SharedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SharedAppBar({super.key, this.title, this.height, this.closeOntap});

  final String? title;
  final double? height;
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
        centerTitle: true,
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
