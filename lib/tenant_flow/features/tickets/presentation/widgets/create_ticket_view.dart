import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';

import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_state.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/ticket_choose_type_view.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/ticket_choose_unit_view.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/widgets/ticket_content_view.dart';

class CreateTicketView extends StatefulWidget {
  const CreateTicketView({super.key});

  @override
  State<CreateTicketView> createState() => _CreateTicketViewState();
}

class _CreateTicketViewState extends State<CreateTicketView> {
  late List<Widget> pages;

  @override
  void initState() {
    getIt<HomeCubit>().units.isEmpty
        ? getIt<HomeCubit>().bottomSheetSelectedView = 1
        : getIt<HomeCubit>().bottomSheetSelectedView = 0;
    pages = [
      TicketChooseUnitView(),
      TicketChooseTypeView(),
      TicketContentView(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return pages[getIt<HomeCubit>().bottomSheetSelectedView];
      },
    );
  }

// _build ticket type choices
}
