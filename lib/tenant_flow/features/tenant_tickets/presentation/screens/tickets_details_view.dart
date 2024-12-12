import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/utils/utils.dart';
import 'package:flutter_complete_project/generated/l10n.dart';

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
          padding: EdgeInsetsDirectional.only(top: 100, start: 24, end: 24),
          // bottom: 0,
          // top: 133,
          child: Container(
            padding: EdgeInsetsDirectional.only(
                start: 16, end: 16, top: 16, bottom: 16),
            width: double.infinity,
            // height: 120,
            decoration: BoxDecoration(
              color: ColorsManager.white,
              border: Border.all(color: ColorsManager.grey),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'رقم التذكرة: 123#',
                  style: getBoldStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                12.verticalSpace,
                Text(
                  'شقة ٤، عمارة ١٢٠، حي الخالدية، شارع عمر بن الخطاب',
                  style: getRegularStyle(
                    fontSize: 13,
                    color: ColorsManager.greyLight,
                  ),
                ),
                12.verticalSpace,
                Row(
                  children: [
                    // TicketStatus(status: 'procs'),
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
            padding: EdgeInsetsDirectional.only(start: 24, end: 24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(S.current.ticketContent,
                      style: getBoldStyle(
                        fontSize: 14,
                        color: ColorsManager.black,
                      )),
                  8.verticalSpace,
                  Container(
                    height: 130,
                    width: double.infinity,
                    padding: EdgeInsetsDirectional.only(
                        start: 16, end: 16, top: 16, bottom: 16),
                    decoration: BoxDecoration(
                      color: ColorsManager.greyLightest,
                      border: Border.all(color: ColorsManager.grey),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Text(
                      S.current.ticketContentDescription,
                      style: getRegularStyle(
                          fontSize: 13, color: Color(0xff001833), height: 1.2),
                    ),
                  ),
                  24.verticalSpace,
                  Text(S.current.attachments,
                      style: getBoldStyle(
                        fontSize: 14,
                        color: ColorsManager.black,
                      )),
                  8.verticalSpace,
                  Container(
                    height: 136,
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
                  _buildCustomRow(title: S.current.ticketType, value: 'صيانة'),
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
                          fontSize: 16, color: ColorsManager.primary),
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
          style: getRegularStyle(fontSize: 14, color: ColorsManager.greyLight),
        ),
        // 8.horizontalSpace,
        Text(
          value ?? '',
          style: getBoldStyle(fontSize: 14, color: ColorsManager.black),
        ),
      ],
    );
  }

  _buildAppBar() {
    return Container(
      width: double.infinity,
      height: 133,
      decoration: BoxDecoration(
        color: ColorsManager.primary,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.only(top: 40, start: 24, end: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(S.current.ticketDetails,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
            InkWell(
              child: Icon(
                Platform.isIOS
                    ? Icons.arrow_forward_ios_rounded
                    : Icons.arrow_forward,
                color: Colors.white,
                size: 24,
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
