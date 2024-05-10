import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/l10n.dart';
import '../logic/cubit/tenant_tickets_cubit.dart';
import 'custom_bottom_sheet_subtitle.dart';
import 'custom_bottom_sheet_title.dart';
import 'custom_close_button.dart';
import 'custom_drag_handler.dart';
import 'ticket_unit_item.dart';

class TicketChooseUnitView extends StatelessWidget {
  const TicketChooseUnitView({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildTicketChooseUnitView();
  }

  _buildTicketChooseUnitView() {
    return BlocProvider.value(
      value: getIt<HomeCubit>(),
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
                CustomBottomSheetTitle(title: S.current.chooseUnit),
                8.verticalSpace,
                CustomBottomSheetSubtitle(
                    subtitle: S.current.chooseSpecificUnit),
                24.verticalSpace,
                _buildUnitChoices(),
                24.verticalSpace,
                _buildNextButton(),
              ],
            ),
          )),
    );
  }

  _buildUnitChoices() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => TicketUnitItem(
              isSubtitle: false,
              title: state.units[index].address ?? '',
              selected: state.units[index] == state.unitSelected,
              onTap: () {
                getIt<HomeCubit>().changeSelectedUnit(state.units[index]);
              }),
          itemCount: state.units.length,
          separatorBuilder: (context, index) => 8.verticalSpace,
        );
      },
    );
  }

  _buildNextButton() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Visibility(
            visible: state.unitSelected != null,
            child: AppTextButton(
                buttonText: S.current.next,
                onPressed: () {
                  if (getIt<TenantTicketsCubit>().state.selectType == null) {
                    getIt<HomeCubit>().changeBottomSheetSelectedView(1);
                  } else {
                    getIt<HomeCubit>().changeBottomSheetSelectedView(2);
                  }
                }));
      },
    );
  }
}
