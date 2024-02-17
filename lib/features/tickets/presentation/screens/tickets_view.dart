import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/features/tickets/presentation/logic/cubit/tickets_cubit.dart';
import 'package:flutter_complete_project/features/tickets/presentation/logic/cubit/tickets_state.dart';
import 'package:flutter_complete_project/features/tickets/presentation/widgets/filter_by_button.dart';
import 'package:flutter_complete_project/features/tickets/presentation/widgets/ticket_item.dart';
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
      child: Column(
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
}
