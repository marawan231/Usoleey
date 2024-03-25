import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_state.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/logic/cubit/tickets_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/logic/cubit/tickets_state.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/custom_close_button.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/custom_drag_handler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterByButton extends StatelessWidget {
  const FilterByButton({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildFilterBy(context);
  }

  _buildFilterBy(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            showModalBottomSheet(
              isDismissible: false,
              enableDrag: false,
              context: context,
              // showDragHandle: true,

              isScrollControlled: true,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.sp),
                  topRight: Radius.circular(40.sp),
                ),
              ),
              backgroundColor: ColorsManager.white,
              builder: (context) {
                return Container(
                  padding:
                      EdgeInsets.only(left: 20.sp, right: 20.sp, bottom: 20.sp),
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
                      children: [
                        20.verticalSpace,
                        CustomDragHandler(),
                        _buildResetButton(),
                        20.verticalSpace,
                        Text(S.current.filterBy,
                            style: getBoldStyle(fontSize: 16.sp)),
                        24.verticalSpace,
                        _buildUnits(),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Container(
              width: 100.sp,
              height: 36.sp,
              decoration: BoxDecoration(
                color: ColorsManager.primary,
                borderRadius: BorderRadius.circular(24.sp),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.filter_alt_outlined,
                    color: ColorsManager.white,
                    size: 14.sp,
                  ),
                  5.horizontalSpace,
                  Text(S.current.filterBy,
                      style: getBoldStyle(
                        fontSize: 12.sp,
                        color: Colors.white,
                      )),
                  // 8.horizontalSpace,
                ],
              )),
        ),
      ],
    );
    // child: Row();
  }

  _buildResetButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            getIt<HomeCubit>().resetAll();
          },
          child: Text('مسح الكل',
              style: getRegularStyle(
                  fontSize: 14.sp, color: ColorsManager.primary)),
        ),

        // 8.horizontalSpace,
        CustomCloseButton(),
      ],
    );
  }

  _buildUnits() {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: getIt<HomeCubit>()),
        BlocProvider.value(value: getIt<TicketsCubit>()),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('العقار', style: getBoldStyle(fontSize: 16.sp)),
              8.verticalSpace,
              _buildListOfUnits(),
              8.verticalSpace,
              Text('نوع التذكرة', style: getBoldStyle(fontSize: 16.sp)),
              8.verticalSpace,
              _buildListOfTicketsType(),
              8.verticalSpace,
              Text('حالة التذكرة', style: getBoldStyle(fontSize: 16.sp)),
              8.verticalSpace,
              _buildListOfTicketsStatus(),
            ],
          ),
          35.verticalSpace,
          _buildApplyButton(),
        ],
      ),
    );
  }

  _buildApplyButton() {
    return AppTextButton(
      buttonText: 'تطبيق',
      onPressed: null,
    );
  }

  _buildListOfUnits() {
    // log(getIt<HomeCubit>().units.toString());
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Wrap(
          spacing: 8.sp,
          children: List.generate(
            getIt<HomeCubit>().units.length,
            (index) => CustomFilterChip(
              label: getIt<HomeCubit>().units[index].name,
              selected: getIt<HomeCubit>().units[index] ==
                  getIt<HomeCubit>().selectedUnit,
              onSelected: (value) {
                getIt<HomeCubit>()
                    .changeSelectedUnit(getIt<HomeCubit>().units[index]);
              },
            ),
          ),
        );
      },
    );
  }
}

_buildListOfTicketsType() {
  return BlocBuilder<TicketsCubit, TicketsState>(
    builder: (context, state) {
      return Wrap(
        spacing: 8.sp,
        children: List.generate(
          getIt<TicketsCubit>().ticketsTypes.length,
          (index) => CustomFilterChip(
              label: getIt<TicketsCubit>().ticketsTypes[index].label,
              selected: getIt<TicketsCubit>().ticketsTypes[index] ==
                  getIt<TicketsCubit>().selectedTicketType,
              onSelected: (value) {
                getIt<TicketsCubit>().selectTicketType(
                    getIt<TicketsCubit>().ticketsTypes[index]);
              }),
        ),
      );
    },
  );
}

_buildListOfTicketsStatus() {
  return BlocBuilder<TicketsCubit, TicketsState>(
    builder: (context, state) {
      return Wrap(
        spacing: 8.sp,
        children: List.generate(
          getIt<TicketsCubit>().ticketsStatus.length,
          (index) => CustomFilterChip(
              label: getIt<TicketsCubit>().ticketsStatus[index].label,
              selected: getIt<TicketsCubit>().ticketsStatus[index] ==
                  getIt<TicketsCubit>().selectedTicketStatus,
              onSelected: (value) {
                getIt<TicketsCubit>().selectTicketStatus(
                    getIt<TicketsCubit>().ticketsStatus[index]);
              }),
        ),
      );
    },
  );
}

class CustomFilterChip extends StatelessWidget {
  const CustomFilterChip(
      {super.key, this.onPressed, this.label, this.selected, this.onSelected});
  final void Function()? onPressed;
  final String? label;
  final bool? selected;
  //on selected
  final void Function(bool? value)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 10.sp),
      showCheckmark: false,
      backgroundColor: ColorsManager.white,
      elevation: 0,
      pressElevation: 0,
      // materialTapTargetSize: MaterialTapTargetSize.hrinkWrap,
      selected: selected ?? false,
      selectedColor: ColorsManager.primary,
      shadowColor: ColorsManager.transparent,

      // color: MaterialStateColor.resolveWith((states) => ColorsManager.white),
      onSelected: onSelected ?? (value) {},
      label: Text(label ?? '',
          style: getBoldStyle(
              fontSize: 11.sp,
              color: selected ?? false
                  ? ColorsManager.white
                  : ColorsManager.primaryDark)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100.sp),
        side: BorderSide(color: ColorsManager.primary),
      ),
    );
  }
}
