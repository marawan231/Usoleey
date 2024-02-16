import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/features/home/presentation/logic/cubit/home_state.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
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
            // getIt<HomeCubit>().getAllUnits();
            showModalBottomSheet(
              context: context,
              // enableDrag: true,
              // scrollControlDisabledMaxHeightRatio: 0.5,
              showDragHandle: true,
              // anchorPoint: Offset(0.5, 0.5),

              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (context) {
                return Container(
                  padding: EdgeInsets.all(20.sp),
                  height: MediaQuery.of(context).size.height * 0.7,
                  // width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.sp),
                      topRight: Radius.circular(40.sp),
                    ),
                  ),
                  child: Column(
                    children: [
                      _buildDragHandle(),
                      _buildResetButton(),
                      // 20.verticalSpace,
                      Text(S.current.filterBy,
                          style: getBoldStyle(fontSize: 16.sp)),
                      24.verticalSpace,
                      _buildUnits(),
                    ],
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

  _buildDragHandle() {
    return Container(
      width: 40.sp,
      height: 6.sp,
      decoration: BoxDecoration(
        color: ColorsManager.grey,
        borderRadius: BorderRadius.circular(100.sp),
      ),
    );
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
        InkWell(
          onTap: () {
            Go.back();
          },
          child: Container(
            width: 30.sp,
            height: 30.sp,
            decoration: BoxDecoration(
              color: ColorsManager.backgroundColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.close,
              color: ColorsManager.primary,
              size: 16.sp,
            ),
          ),
        ),
      ],
    );
  }

  _buildUnits() {
    return BlocProvider.value(
      value: getIt<HomeCubit>(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
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
            5,
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
  return Wrap(
    spacing: 8.sp,
    children: List.generate(
      5,
      (index) => CustomFilterChip(),
    ),
  );
}

_buildListOfTicketsStatus() {
  return Wrap(
    spacing: 8.sp,
    children: List.generate(
      5,
      (index) => CustomFilterChip(),
    ),
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
      showCheckmark: false,
      // backgroundColor: ColorsManager.white,
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
