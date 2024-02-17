import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/utils/utils.dart';
import 'package:flutter_complete_project/core/widgets/custom_cached_image.dart';
import 'package:flutter_complete_project/features/home/data/models/ads_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersItem extends StatelessWidget {
  const OffersItem({super.key, this.height, this.width, required this.ads});

  final double? height;
  final double? width;
  final Ad? ads;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchWebUrl(url: ads!.url ?? 'https://www.google.com');
        // Go.toNamed(NamedRoutes.offers);
      },
      child: Container(
        height: height ?? 180.sp,
        width: width ?? double.infinity,
        // color: Colors.red,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: ColorsManager.grey,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.r),
                topRight: Radius.circular(8.r),
              ),
              child: CustomCachedImage(
                image: ads!.image!,
                height: 120.sp,
                width: width ?? double.infinity,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 8.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ads!.title ?? '',
                    style: getBoldStyle(fontSize: 14.sp),
                  ),
                  8.verticalSpace,
                  Text(
                    ads!.subTitle ?? '',
                    style: getBoldStyle(
                      fontSize: 12.sp,
                      color: ColorsManager.primary,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
