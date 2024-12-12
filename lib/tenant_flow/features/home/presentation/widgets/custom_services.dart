import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/tenant_flow/features/tenant_tickets/presentation/logic/cubit/tenant_tickets_cubit.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../generated/l10n.dart';

class CustomServices extends StatelessWidget {
  const CustomServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: InkWell(
          onTap: () {
            getIt<TenantTicketsCubit>()
                .selectTicket(getIt<TenantTicketsCubit>().ticketsTypes[0]);
            getIt<TenantTicketsCubit>().openTicketCreationFlow(context);
          },
          child: _buildServiceItem(
              title: S.current.serviceRequest, icon: AssetsManager.service),
        )),
        16.horizontalSpace,
        Expanded(
            child: InkWell(
          onTap: () {
            getIt<TenantTicketsCubit>()
                .selectTicket(getIt<TenantTicketsCubit>().ticketsTypes[1]);
            getIt<TenantTicketsCubit>().openTicketCreationFlow(context);
          },
          child: _buildServiceItem(
              title: S.current.submitComplaint,
              icon: AssetsManager.sendComplain),
        )),
      ],
    );
  }

  Widget _buildServiceItem({String? title, String? icon}) {
    return Container(
      // width: double.infinity,
      height: 116,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: ColorsManager.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorsManager.primaryLighter,
                // borderRadius: BorderRadius.circular(8.r),
              ),
              child: Transform.scale(
                scale: 0.5,
                child: SvgPicture.asset(
                  icon ?? '',
                  // ignore: deprecated_member_use
                  // color: ColorsManager.primary,
                  // width: 50.w,
                  // height: 50.h,
                ),
              )),
          8.verticalSpace,
          Text(title ?? '',
              style: getBoldStyle(
                fontSize: 14,
                color: ColorsManager.primaryDark,
              )),
        ],
      ),
    );
  }
}
