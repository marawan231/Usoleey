import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/enums/enums.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/utils/utils.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/core/widgets/base_remote_widget.dart';
import 'package:flutter_complete_project/core/widgets/custom_bottom_sheet_dialog.dart';
import 'package:flutter_complete_project/generated/l10n.dart';


import '../logic/cubit/tenant_tickets_cubit.dart';
import 'custom_drag_handler.dart';

class FilterByButton extends StatelessWidget {
  const FilterByButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            customBottomSheetDialog(
              body: BlocProvider.value(
                value: getIt<TenantTicketsCubit>()..getMyUnits(),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: CustomDragHandler()),
                      _buildResetButton(),
                      20.verticalSpace,
                      Center(
                          child: Text(S.current.filterBy,
                              style: getBoldStyle(fontSize: 16))),
                      24.verticalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BottomSheetFilterBody(),
                          35.verticalSpace,
                          AppTextButton(
                            buttonText: S.current.apply,
                            onPressed: () {
                              Go.back();
                              getIt<TenantTicketsCubit>()
                                  .getTenantTickets(firstTime: true);
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          child: Container(
            width: 100,
            height: 36,
            decoration: BoxDecoration(
              color: ColorsManager.primary,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.filter_alt_outlined,
                  color: ColorsManager.white,
                  size: 14,
                ),
                5.horizontalSpace,
                Text(
                  S.current.filterBy,
                  style: getBoldStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                // 8.horizontalSpace,
              ],
            ),
          ),
        ),
      ],
    );
  }

  _buildResetButton() {
    return BlocBuilder<TenantTicketsCubit, TenantTicketsState>(
      builder: (context, state) {
        return Visibility(
          visible: state.type != null ||
              state.status != null ||
              state.unitsIDs.isNotEmpty,
          child: InkWell(
            onTap: () => getIt<TenantTicketsCubit>().clearFilterValues(),
            child: Text(S.current.deleteAll,
                style: getRegularStyle(
                    fontSize: 14, color: ColorsManager.primary)),
          ),
        );
      },
    );
  }
}

class BottomSheetFilterBody extends StatelessWidget {
  const BottomSheetFilterBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.current.property, style: getBoldStyle(fontSize: 16)),
        16.verticalSpace,
        ListOfUnits(),
        24.verticalSpace,
        Text(S.current.ticketType, style: getBoldStyle(fontSize: 16)),
        16.verticalSpace,
        ListOfTicketsType(),
        24.verticalSpace,
        Text(S.current.ticketStatus, style: getBoldStyle(fontSize: 16)),
        16.verticalSpace,
        ListOfTicketsStatus()
      ],
    );
  }
}

class ListOfUnits extends StatelessWidget {
  const ListOfUnits({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TenantTicketsCubit, TenantTicketsState>(
      builder: (context, state) {
        return BaseRemoteWidget(
          requestState: state.getTenantUnitsState,
          successWidget: Wrap(
            runSpacing: 10,
            spacing: 8,
            children: state.units.map(
              (unit) {
                return Choice(
                    name: unit.name ?? '',
                    color: state.unitsIDs.contains(unit.id)
                        ? ColorsManager.primary
                        : Colors.white,
                    textColor: state.unitsIDs.contains(unit.id)
                        ? Colors.white
                        : ColorsManager.primary,
                    onTap: () =>
                        getIt<TenantTicketsCubit>().selectUnit(unit.id ?? 0));
              },
            ).toList(),
          ),
        );
      },
    );
  }
}

class ListOfTicketsType extends StatelessWidget {
  const ListOfTicketsType({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TenantTicketsCubit, TenantTicketsState>(
      builder: (context, state) {
        return Wrap(
          spacing: 8,
          runSpacing: 8,
          children: TicketType.values.map(
            (type) {
              return Choice(
                  name: getTicketTypeProperties(type).type,
                  color:
                      state.type == type ? ColorsManager.primary : Colors.white,
                  textColor:
                      state.type == type ? Colors.white : ColorsManager.primary,
                  onTap: () =>
                      getIt<TenantTicketsCubit>().selectTicketType(type));
            },
          ).toList(),
        );
      },
    );
  }
}

class ListOfTicketsStatus extends StatelessWidget {
  const ListOfTicketsStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TenantTicketsCubit, TenantTicketsState>(
      builder: (context, state) {
        return Wrap(
          spacing: 8,
          runSpacing: 8,
          children: TicketStatus.values.map(
            (status) {
              return Choice(
                  name: getTicketStatusProperties(status).status,
                  color: state.status == status
                      ? ColorsManager.primary
                      : Colors.white,
                  textColor: state.status == status
                      ? Colors.white
                      : ColorsManager.primary,
                  onTap: () =>
                      getIt<TenantTicketsCubit>().selectTicketStatus(status));
            },
          ).toList(),
        );
      },
    );
  }
}

class Choice extends StatelessWidget {
  final String name;
  final Color color, textColor;
  final Function() onTap;

  const Choice(
      {super.key,
      required this.name,
      required this.color,
      required this.textColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: ColorsManager.primary)),
        child: Text(name, style: getBoldStyle(fontSize: 12, color: textColor)),
      ),
    );
  }
}
