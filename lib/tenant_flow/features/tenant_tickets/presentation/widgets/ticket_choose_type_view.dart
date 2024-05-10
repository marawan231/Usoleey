import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/tenant_tickets/presentation/widgets/ticket_unit_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/l10n.dart';
import '../logic/cubit/tenant_tickets_cubit.dart';
import 'custom_bottom_sheet_subtitle.dart';
import 'custom_bottom_sheet_title.dart';
import 'custom_close_button.dart';
import 'custom_drag_handler.dart';

class TicketChooseTypeView extends StatelessWidget {
  const TicketChooseTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<TenantTicketsCubit>(),
      child: Container(
          padding: EdgeInsets.only(
              left: 24.sp, right: 24.sp, bottom: 24.sp, top: 15.sp),
          decoration: BoxDecoration(
            color: ColorsManager.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.sp),
              topRight: Radius.circular(40.sp),
            ),
          ),
          child: SingleChildScrollView(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomDragHandler(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomCloseButton(
                    onTap: () {
                      getIt<HomeCubit>().resetAll();
                      Go.back();
                    },
                  ),
                ],
              ),
              CustomBottomSheetTitle(
                  title: S.current.chooseType),
              8.verticalSpace,
              CustomBottomSheetSubtitle(
                  subtitle:
                      S.current.chooseTypeSubtitle),
              24.verticalSpace,
              _buildTicketTypeChoices(),
              24.verticalSpace,
              _buildChooseTicketTypeNextButton(),
            ],
          ))),
    );
  }

  _buildTicketTypeChoices() {
    return BlocBuilder<TenantTicketsCubit, TenantTicketsState>(
      builder: (context, state) {
        return ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => TicketUnitItem(
              icon: getIt<TenantTicketsCubit>().ticketsTypes[index].icon ?? '',
              title:
                  getIt<TenantTicketsCubit>().ticketsTypes[index].label ?? '',
              subTitle:
                  getIt<TenantTicketsCubit>().ticketsTypes[index].subTitle ??
                      '',
              selected: getIt<TenantTicketsCubit>().ticketsTypes[index] ==
                  state.selectType,
              onTap: () {
                getIt<TenantTicketsCubit>().selectTicket(
                    getIt<TenantTicketsCubit>().ticketsTypes[index]);
              }),
          itemCount: getIt<TenantTicketsCubit>().ticketsTypes.length,
          separatorBuilder: (context, index) => 8.verticalSpace,
        );
      },
    );
  }

  _buildChooseTicketTypeNextButton() {
    return BlocBuilder<TenantTicketsCubit, TenantTicketsState>(
      builder: (context, state) {
        return Visibility(
            visible: state.selectType != null,
            child: AppTextButton(
                buttonText: 'التالي',
                onPressed: () {
                  getIt<HomeCubit>().changeBottomSheetSelectedView(2);
                }));
      },
    );
  }
}
