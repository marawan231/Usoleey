import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_complete_project/core/extensions/seperator_helper.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/utils/utils.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/data/models/units_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/widgets/rent_time_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/custom_border_container.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../property_owner_flow/features/unit_details/presentation/widgets/unit_details_widgets_imports.dart';
import '../../../tenant_tickets/presentation/logic/cubit/tenant_tickets_cubit.dart';
import '../logic/cubit/home_cubit.dart';

class UnitDetailsView extends StatelessWidget {
  const UnitDetailsView({super.key, required this.unit});

  final Units unit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _buildBackground(),
        _buildFloatingTicketDetails(),
        _buildButtons(context),
      ],
    ));
  }

  _buildButtons(BuildContext context) {
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
                buttonText: S.current.serviceRequest,
                textStyle: getBoldStyle(fontSize: 12.sp),
                onPressed: () {
                  getIt<TenantTicketsCubit>().selectTicket(
                      getIt<TenantTicketsCubit>().ticketsTypes[0]);
                  getIt<HomeCubit>().changeSelectedUnit(unit);
                  getIt<TenantTicketsCubit>().openTicketCreationFlow(context);
                },
              ),
            ),
            8.horizontalSpace,
            Expanded(
              child: AppTextButton(
                buttonHeight: 38.sp,
                buttonText: S.current.submitComplaint,
                textStyle: getBoldStyle(fontSize: 12.sp),
                onPressed: () {
                  getIt<TenantTicketsCubit>().selectTicket(
                      getIt<TenantTicketsCubit>().ticketsTypes[1]);
                  getIt<HomeCubit>().changeSelectedUnit(unit);
                  getIt<TenantTicketsCubit>().openTicketCreationFlow(context);
                },
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
                    text: S.current.monthSar,
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
                  100.verticalSpace,
                  // _buildBillsInfo(),
                  // 100.verticalSpace,
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
        ...unit.invoices!
            .map((e) => InvoiceItem(
                  invoiceModel: e,
                  isBillDetails: true,
                  margin: EdgeInsets.zero,
                ))
            .toList()
            .joinWith(8.verticalSpace)
      ],
    );
  }

  _buildNatiotnalAddress() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.unitAddrss,
          style: getBoldStyle(
            fontSize: 16.sp,
            color: ColorsManager.black,
          ),
        ),
        10.verticalSpace,
        CustomBorderContainer(
          margin: EdgeInsets.zero,
          child: Row(
            children: [
              CircleAvatar(
                  minRadius: 24.sp,
                  child: SvgPicture.asset(AssetsManager.location),
                  backgroundColor: ColorsManager.primaryLighter),
              8.horizontalSpace,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      unit.address ?? '',
                      style: getBoldStyle(
                          fontSize: 12.sp, color: ColorsManager.primaryDark),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
        // InvoicesItem(
        //   trailing: SizedBox(),
        //   icon: AssetsManager.location,
        //   title: 'الرياض',
        //   titleStyle: getRegularStyle(
        //     fontSize: 14.sp,
        //     color: ColorsManager.black,
        //   ),
        //   subtitle: 'شقة ٤، عمارة ١٢٠، حي الخالدية، شارع عمر بن الخطاب',
        //   subtitleStyle: getRegularStyle(
        //     fontSize: 12.sp,
        //     color: ColorsManager.greyLight,
        //   ),
        // )
      ],
    );
  }

  _buildNextBillsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.nextInvoices,
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
            itemBuilder: (context, index) => InvoiceItem(
                invoiceModel: unit.invoices![index], margin: EdgeInsets.zero),
            separatorBuilder: (context, index) => 8.verticalSpace,
            itemCount: unit.invoices!.length),
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
        GridView(
          padding: EdgeInsetsDirectional.only(top: 0.sp),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.sp,
              mainAxisSpacing: 8.sp,
              childAspectRatio: 2.2.sp),
          children: [
            PropertyDetailsItem(
                title: S.current.space,
                value: '${unit.space ?? ''} ${S.current.squareMeters}'),
            PropertyDetailsItem(
                title: S.current.rooms,
                value: '${unit.rooms ?? ''} ${S.current.bedRooms}'),
            PropertyDetailsItem(
                title: S.current.lounge,
                value: unit.lounge ?? false
                    ? '${S.current.there}'
                    : '${S.current.nothing}'),
            PropertyDetailsItem(
                title: S.current.bathrooms,
                value: '${unit.bathrooms ?? ''} ${S.current.bathrooms}'),
            PropertyDetailsItem(
                title: S.current.conditioner,
                value: '${unit.conditioners ?? ''} ${S.current.conditioners}'),
            PropertyDetailsItem(
                title: S.current.kitchen,
                value: unit.kitchen ?? false
                    ? '${S.current.there}'
                    : '${S.current.nothing}'),
          ],
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

class PropertyDetailsItem extends StatelessWidget {
  final String title, value;

  const PropertyDetailsItem(
      {super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return CustomBorderContainer(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: getRegularStyle(
                fontSize: 12.sp,
                color: ColorsManager.black,
              )),
          8.verticalSpace,
          Text(value,
              style: getBoldStyle(
                fontSize: 12.sp,
                color: ColorsManager.black,
              )),
        ],
      ),
    );
  }
}
