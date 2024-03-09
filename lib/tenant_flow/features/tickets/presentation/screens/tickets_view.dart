import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/utils/utils.dart';
import 'package:flutter_complete_project/core/widgets/empty_lottie.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/logic/cubit/tickets_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/logic/cubit/tickets_state.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/create_ticket_view.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/filter_by_button.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/ticket_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketsView extends StatelessWidget {
  const TicketsView({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  _buildBody() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.sp, vertical: 24.sp),
      child: getIt<TicketsCubit>().tickets.isEmpty
          ? EmptyLottie(
              lottiePath: AssetsManager.emptyTickets,
              title: 'لايوجد لديك تذاكر',
              subTitle: 'قم بإنشاء أول تذكرة لك وستظهر هنا',
              isButtonVisible: true,
              buttonText: 'إنشاء تذكرة',
              onPressed: () {
             _openTicketCreationFlow(Go.navigatorKey.currentContext);
              },
              padding: 0,
            )
          : Column(
              children: [
                FilterByButton(),
                16.verticalSpace,
                _buildTicketsList(),
              ],
            ),
    );
  }

  _buildTicketsList() {
    return BlocBuilder<TicketsCubit, TicketsState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.separated(
              padding: EdgeInsets.only(
                  top: 0.sp, bottom: 24.sp, left: 0.sp, right: 0),
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  TicketItem(ticket: getIt<TicketsCubit>().tickets[index]),
              separatorBuilder: (context, index) => 8.verticalSpace,
              itemCount: getIt<TicketsCubit>().tickets.length),
        );
      },
    );
  }

  _openTicketCreationFlow(context) {
    //open bottom sheet

    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        isDismissible: false,
        enableDrag: false,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        builder: (context) {
          return BlocProvider.value(
            value: getIt<HomeCubit>(),
            child: CreateTicketView(),
          );
        });
  }
}
