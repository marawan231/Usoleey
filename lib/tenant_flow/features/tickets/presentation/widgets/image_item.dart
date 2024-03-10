import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({super.key, this.imageFile, this.onTap});

  final File? imageFile;
  final Function()? onTap;
  _buildDeleteButton() {
    return Positioned(
      left: -12.w,
      top: -12.h,
      child: Container(
        height: 35.h,
        width: 35.h,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorsManager.white,
            boxShadow: [
              BoxShadow(
                  color: ColorsManager.grey, spreadRadius: 3.r, blurRadius: 3.r)
            ]),
        child: Center(
          child: InkWell(
              onTap: onTap,
              child: Icon(Icons.close, size: 20.sp, color: ColorsManager.grey)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 112.h,
            width: 112.h,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: ColorsManager.red,
              borderRadius: BorderRadius.circular(15.r),
              image: DecorationImage(
                  image: FileImage(imageFile!), fit: BoxFit.cover),
            ),
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0x00000000), Color(0x4D000000)])
                    .createShader(bounds);
              },
              blendMode: BlendMode.multiply,
            )),
        // _buildDeleteButton()
      ],
    );
  }
}
