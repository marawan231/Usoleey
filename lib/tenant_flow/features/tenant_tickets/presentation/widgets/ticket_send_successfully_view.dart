import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/property_owner_flow/features/ticket_details/presentation/screens/ticket_details_screen_imports.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../generated/l10n.dart';
import '../logic/cubit/tenant_tickets_cubit.dart';
import 'custom_bottom_sheet_subtitle.dart';
import 'custom_bottom_sheet_title.dart';
import 'custom_close_button.dart';
import 'custom_drag_handler.dart';

class TicketSendSuccessfullyView extends StatelessWidget {
  const TicketSendSuccessfullyView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: getIt<HomeCubit>(),
        ),
        BlocProvider.value(
          value: getIt<TenantTicketsCubit>(),
        ),
      ],
      child: Container(
        padding: EdgeInsets.only(left: 24, right: 24, bottom: 24, top: 15),
        decoration: BoxDecoration(
          color: ColorsManager.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
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
              SvgPicture.asset(AssetsManager.ticketSent),
              24.verticalSpace,
              CustomBottomSheetTitle(
                  title: S.current.ticketSentSuccessfullyTitle),
              8.verticalSpace,
              CustomBottomSheetSubtitle(
                  subtitle: S.current.ticketSentSuccessfullySubtitle),
              24.verticalSpace,
              AppTextButton(
                  buttonText: S.current.viewTicket,
                  onPressed: () {
                    Go.offNamed(NamedRoutes.ownerTicketDetails,
                        arguments: TicketDetailsScreen(
                            id: getIt<TenantTicketsCubit>().ticketId));
                  }),
              24.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
