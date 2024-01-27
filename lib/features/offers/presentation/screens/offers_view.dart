import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_shared_appbar.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: S.current.offers,
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return ListView.separated(
      padding:
          EdgeInsetsDirectional.symmetric(horizontal: 24.sp, vertical: 16.sp),
      shrinkWrap: true,
      itemBuilder: (context, index) => _buildItem(),
      separatorBuilder: (context, index) => 16.verticalSpace,
      itemCount: 10,
    );
  }

  _buildItem() {
    return Container(
      height: 180.sp,
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
          Image.asset(
            AssetsManager.tempBuilding,
            height: 120.sp,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 8.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'شقة سكنية في ارقى أحياء الرياض',
                  style: getBoldStyle(fontSize: 14.sp),
                ),
                8.verticalSpace,
                Text(
                  '١٢٠٠ ريال/شهري',
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
    );
  }
}
