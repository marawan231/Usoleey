import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmer extends StatelessWidget {
  final double? radius, width, height;
  final Color? color;

  const CustomShimmer(
      {super.key, this.radius, this.width, this.height, this.color});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        enabled: true,
        child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                color: ColorsManager.greyLighter,
                borderRadius:
                    BorderRadius.all(Radius.circular(radius ?? 10.r)))));
  }
}
