import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/logic/cubit/tickets_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/logic/cubit/tickets_state.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/custom_bottom_sheet_subtitle.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/custom_bottom_sheet_title.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/custom_close_button.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/custom_drag_handler.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/ticket_unit_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketChooseTypeView extends StatelessWidget {
  const TicketChooseTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<TicketsCubit>(),
      child: Container(
          padding: EdgeInsets.only(
              left: 24.sp, right: 24.sp, bottom: 24.sp, top: 15.sp),
          // height: MediaQuery.of(context).size.height * 0.6,
          // width: double.infinity,
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
                  title: 'ماهو نوع التذكرة الذي تود إنشاءه؟'),
              8.verticalSpace,
              CustomBottomSheetSubtitle(
                  subtitle:
                      'قم باختيار نوع التذكرة الذي تود إنشاءه وفقا لما سيتضمنه طلبك'),
              24.verticalSpace,
              _buildTicketTypeChoices(),
              24.verticalSpace,
              _buildChooseTicketTypeNextButton(),
            ],
          ))),
    );
  }

  _buildTicketTypeChoices() {
    return BlocBuilder<TicketsCubit, TicketsState>(
      builder: (context, state) {
        return ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => TicketUnitItem(
              icon: getIt<TicketsCubit>().ticketsTypes[index].icon ?? '',
              title: getIt<TicketsCubit>().ticketsTypes[index].label ?? '',
              subTitle:
                  getIt<TicketsCubit>().ticketsTypes[index].subTitle ?? '',
              selected: getIt<TicketsCubit>().ticketsTypes[index] ==
                  getIt<TicketsCubit>().selectedTicketType,
              onTap: () {
                getIt<TicketsCubit>().selectTicketType(
                    getIt<TicketsCubit>().ticketsTypes[index]);
              }),
          itemCount: getIt<TicketsCubit>().ticketsTypes.length,
          separatorBuilder: (context, index) => 8.verticalSpace,
        );
      },
    );
  }

  _buildChooseTicketTypeNextButton() {
    return BlocBuilder<TicketsCubit, TicketsState>(
      builder: (context, state) {
        return Visibility(
            visible: getIt<TicketsCubit>().selectedTicketType != null,
            child: AppTextButton(
                buttonText: 'التالي',
                onPressed: () {
                  getIt<HomeCubit>().changeBottomSheetSelectedView(2);
                }));
      },
    );
  }
}
