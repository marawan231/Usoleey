import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/utils/utils.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/data/models/units_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/widgets/rent_time_container.dart';
import 'package:flutter_complete_project/tenant_flow/features/invoices/presentation/widgets/invoices_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class UnitDetailsView extends StatelessWidget {
  const UnitDetailsView({super.key, required this.unit});

  final Units unit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorsManager.white,
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Stack(
      children: [
        _buildBackground(),
        _buildFloatingTicketDetails(),
        _buildButtons(),
      ],
    );
  }

  _buildButtons() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 72.sp,
        padding: EdgeInsetsDirectional.only(start: 16.sp, end: 16.sp),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            //Navbar Shadow
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(0, -1), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: AppTextButton(
                buttonHeight: 38.sp,
                buttonText: 'طلب خدمة',
                textStyle: getBoldStyle(fontSize: 12.sp),
                onPressed: () {},
              ),
            ),
            8.horizontalSpace,
            Expanded(
              child: AppTextButton(
                buttonHeight: 38.sp,
                buttonText: 'ارسال شكوى',
                textStyle: getBoldStyle(fontSize: 12.sp),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildFloatingTicketDetails() {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsetsDirectional.only(top: 210.sp, start: 24.sp, end: 24.sp),
          // bottom: 0,
          // top: 133.sp,
          child: Container(
            padding: EdgeInsetsDirectional.only(
                start: 16.sp, end: 16.sp, top: 16.sp, bottom: 16.sp),
            width: double.infinity,
            // height: 120.sp,
            decoration: BoxDecoration(
              color: ColorsManager.white,
              border: Border.all(color: ColorsManager.grey),
              borderRadius: BorderRadius.all(Radius.circular(8.sp)),
            ),
            child: Column(
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: unit.rent.toString(),
                    style: getBoldStyle(
                        fontSize: 16.sp, color: ColorsManager.black),
                  ),
                  WidgetSpan(child: 4.horizontalSpace),
                  TextSpan(
                    text: 'ريال/شهري',
                    style: getRegularStyle(
                        fontSize: 12.sp, color: ColorsManager.black),
                  ),
                ])),
                16.verticalSpace,
                RentTimeContainer(
                  rentTime: unit.rentCollectionDate ?? '',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _buildBackground() {
    return Column(
      children: [
        _buildAppBar(),
        66.verticalSpace,
        Expanded(
          child: Container(
            // color: ColorsManager.white,
            padding: EdgeInsetsDirectional.only(start: 24.sp, end: 24.sp),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildNextBillsList(),
                  24.verticalSpace,
                  _buildUnitDetails(),
                  24.verticalSpace,
                  _buildNatiotnalAddress(),
                  24.verticalSpace,
                  _buildBillsInfo(),
                  100.verticalSpace,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  _buildBillsInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'معلومات الفواتير',
          style: getBoldStyle(
            fontSize: 16.sp,
            color: ColorsManager.black,
          ),
        ),
        10.verticalSpace,
        InvoicesItem(
          title: 'تكلفة فاتورة المياه',
          subtitle: '١٢٠ ريال/شهري',
          trailing: SizedBox(),
          // icon: AssetsManager.water,
        ),
        10.verticalSpace,
        InvoicesItem(
          title: 'رقم حساب فاتورة الكهرباء',
          subtitle: unit.electricityAccount ?? '',
          trailing: InkWell(
            onTap: () {
              Clipboard.setData(
                  new ClipboardData(text: unit.electricityAccount ?? ''));
              showToast(
                  message: 'تم نسخ الرقم',
                  color: ColorsManager.primaryLighter,
                  textColor: ColorsManager.black);
            },
            child: Container(
              width: 30.sp,
              height: 30.sp,
              // padding: EdgeInsetsDirectional.only(start: .sp, end: 16.sp),
              decoration: BoxDecoration(
                color: ColorsManager.primaryLighter,
                borderRadius: BorderRadius.all(Radius.circular(8.sp)),
              ),
              child: Transform.scale(
                scale: 0.5,
                child: SvgPicture.asset(
                  AssetsManager.copy,
                ),
              ),
            ),
          ),
          icon: AssetsManager.electricity,
        ),
      ],
    );
  }

  _buildNatiotnalAddress() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'عنوان العقار الوطني',
          style: getBoldStyle(
            fontSize: 16.sp,
            color: ColorsManager.black,
          ),
        ),
        10.verticalSpace,
        InvoicesItem(
          trailing: SizedBox(),
          icon: AssetsManager.location,
          title: 'الرياض',
          titleStyle: getRegularStyle(
            fontSize: 14.sp,
            color: ColorsManager.black,
          ),
          subtitle: 'شقة ٤، عمارة ١٢٠، حي الخالدية، شارع عمر بن الخطاب',
          subtitleStyle: getRegularStyle(
            fontSize: 12.sp,
            color: ColorsManager.greyLight,
          ),
        )
      ],
    );
  }

  _buildNextBillsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'الفواتير القادمة',
          style: getBoldStyle(
            fontSize: 16.sp,
            color: ColorsManager.black,
          ),
        ),
        10.verticalSpace,
        ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemBuilder: (context, index) => InvoicesItem(
                  title: 'فاتورة الإيجار',
                  subtitle: 'فبراير ١٤، ٢٠٢٣',
                  trailing: SizedBox(),
                  icon: AssetsManager.money,
                ),
            separatorBuilder: (context, index) => 8.verticalSpace,
            itemCount: 2),
      ],
    );
  }

  _buildUnitDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'مواصفات العقار',
          style: getBoldStyle(
            fontSize: 16.sp,
            color: ColorsManager.black,
          ),
        ),
        16.verticalSpace,
        GridView.builder(
          padding: EdgeInsetsDirectional.only(top: 0.sp),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.sp,
              mainAxisSpacing: 8.sp,
              childAspectRatio: 2.sp),
          itemBuilder: (context, index) => Container(
            padding: EdgeInsetsDirectional.only(
                start: 10.sp, end: 10.sp, top: 10.sp, bottom: 10.sp),
            // height: 56,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 1),
              border: Border.all(color: ColorsManager.grey),
              borderRadius: BorderRadius.all(Radius.circular(8.sp)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('المساحة',
                    style: getRegularStyle(
                      fontSize: 12.sp,
                      color: ColorsManager.black,
                    )),
                8.verticalSpace,
                Text('١٢٠٠ متر مربع',
                    style: getBoldStyle(
                      fontSize: 12.sp,
                      color: ColorsManager.black,
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _buildAppBar() {
    return Container(
      width: double.infinity,
      height: 250.sp,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsManager.tempBuilding),
          fit: BoxFit.cover,
        ),
        color: ColorsManager.primary,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.only(top: 40.sp, start: 24.sp, end: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              child: Icon(
                Platform.isIOS
                    ? Icons.arrow_forward_ios_rounded
                    : Icons.arrow_forward,
                color: Colors.white,
                size: 24.sp,
              ),
              onTap: () {
                Go.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
