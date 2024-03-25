import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/utils/utils.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/ticket_status.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketDetailsView extends StatelessWidget {
  const TicketDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.white,
      // appBar: _buildAppBar(),

      body: _buildBody(),
    );
  }

  _buildBody() {
    return Stack(
      // fit: StackFit.loose,
      children: [
        _buildBackground(),
        _buildFloatingTicketDetails(),
      ],
    );
  }

  _buildFloatingTicketDetails() {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsetsDirectional.only(top: 100.sp, start: 24.sp, end: 24.sp),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'رقم التذكرة: 123#',
                  style: getBoldStyle(
                    fontSize: 22.sp,
                    color: Colors.black,
                  ),
                ),
                12.verticalSpace,
                Text(
                  'شقة ٤، عمارة ١٢٠، حي الخالدية، شارع عمر بن الخطاب',
                  style: getRegularStyle(
                    fontSize: 13.sp,
                    color: ColorsManager.greyLight,
                  ),
                ),
                12.verticalSpace,
                Row(
                  children: [
                    TicketStatus(status: 'procs'),
                  ],
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
        110.verticalSpace,
        Expanded(
          child: Container(
            color: ColorsManager.white,
            padding: EdgeInsetsDirectional.only(start: 24.sp, end: 24.sp),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('محتوى التذكرة',
                      style: getBoldStyle(
                        fontSize: 14.sp,
                        color: ColorsManager.black,
                      )),
                  8.verticalSpace,
                  Container(
                    height: 130.sp,
                    width: double.infinity,
                    padding: EdgeInsetsDirectional.only(
                        start: 16.sp, end: 16.sp, top: 16.sp, bottom: 16.sp),
                    decoration: BoxDecoration(
                      color: ColorsManager.greyLightest,
                      border: Border.all(color: ColorsManager.grey),
                      borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                    ),
                    child: Text(
                      'يوجد مشكلة في صيانة التكييف ارجو إرسال احد العاملين لإصلاح العطب في اقرب وقت',
                      style: getRegularStyle(
                          fontSize: 13.sp,
                          color: Color(0xff001833),
                          height: 1.2.sp),
                    ),
                  ),
                  24.verticalSpace,
                  Text('المرفقات',
                      style: getBoldStyle(
                        fontSize: 14.sp,
                        color: ColorsManager.black,
                      )),
                  8.verticalSpace,
                  Container(
                    height: 136.sp,
                    child: ListView.separated(
                        shrinkWrap: true,
                        // physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            Image.asset(AssetsManager.tempTicket),
                        separatorBuilder: (context, index) =>
                            16.horizontalSpace,
                        itemCount: 3),
                  ),
                  20.verticalSpace,
                  Divider(),
                  20.verticalSpace,
                  _buildCustomRow(title: 'نوع التذكرة', value: 'صيانة'),
                  16.verticalSpace,
                  _buildCustomRow(
                      title: 'تاريخ إنشاء التذكرة', value: '١٢ نوفمبر'),
                  16.verticalSpace,
                  _buildCustomRow(title: 'تاريخ اخر تحديث', value: '١٢ نوفمبر'),
                  36.verticalSpace,
                  Center(
                      child: InkWell(
                    onTap: () {
                      showIosDialog(
                        context: Go.navigatorKey.currentContext!,
                        title: 'هل تود إلغاء التذكرة',
                        content: 'هل انت متأكد انك تود إلغاء التذكرة ؟',
                        cancelText: 'تراجع',
                        okText: 'إلغاء التذكرة',
                        ok: () {
                          // Go.toNamed(NamedRoutes.login);
                        },
                        cancel: () {},
                      );
                    },
                    child: Text(
                      'إلغاء التذكرة',
                      style: getBoldStyle(
                          fontSize: 16.sp, color: ColorsManager.primary),
                    ),
                  ))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  _buildCustomRow({String? title, String? value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title ?? '',
          style:
              getRegularStyle(fontSize: 14.sp, color: ColorsManager.greyLight),
        ),
        // 8.horizontalSpace,
        Text(
          value ?? '',
          style: getBoldStyle(fontSize: 14.sp, color: ColorsManager.black),
        ),
      ],
    );
  }

  _buildAppBar() {
    return Container(
      width: double.infinity,
      height: 133.sp,
      decoration: BoxDecoration(
        color: ColorsManager.primary,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.only(top: 40.sp, start: 24.sp, end: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(S.current.ticketDetails,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                )),
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
