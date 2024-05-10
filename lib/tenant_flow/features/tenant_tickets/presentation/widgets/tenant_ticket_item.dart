import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/extensions/seperator_helper.dart';
import 'package:flutter_complete_project/core/extensions/ticket_type_extention.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/custom_shimmer.dart';
import 'package:flutter_complete_project/core/widgets/ticket_item.dart';
import 'package:flutter_complete_project/property_owner_flow/features/owner_home/data/models/home_model.dart';
import 'package:flutter_complete_project/property_owner_flow/features/ticket_details/presentation/screens/ticket_details_screen_imports.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/extensions/ticket_status_extention.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../generated/l10n.dart';

class TenantTicketItem extends StatelessWidget {
  const TenantTicketItem({super.key, required this.ticket});

  final TicketModel ticket;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Go.toNamed(NamedRoutes.ownerTicketDetails,
          arguments: TicketDetailsScreen(id: ticket.id ?? 0)),
      child: Container(
        decoration: BoxDecoration(
            color: ColorsManager.white,
            border: Border.all(color: ColorsManager.grey, width: 1.sp),
            borderRadius: BorderRadius.circular(8.r)),
        child: Row(
          children: [
            TicketColorWidget(status: ticket.status ?? ''),
            TicketBody(ticket: ticket)
          ].joinWith(8.horizontalSpace),
        ),
        // child:
      ),
    );
  }
}

class TicketBody extends StatelessWidget {
  const TicketBody({super.key, required this.ticket});

  final TicketModel ticket;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsetsDirectional.all(10.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TenantTicketHeader(ticket: ticket),
            Text(
              ticket.description ?? '',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: getBoldStyle(fontSize: 14.sp, color: ColorsManager.black),
            ),
            Text(
                '${S.current.createdAt}: ${formatCreatedAtAgo(ticket.createdAt ?? '')}',
                style: getBoldStyle(
                  fontSize: 11.sp,
                  color: ColorsManager.greyMedium,
                )),
          ].joinWith(10.verticalSpace),
        ),
      ),
    );
  }
}

class TicketColorWidget extends StatelessWidget {
  final String status;

  const TicketColorWidget({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 8.sp,
      decoration: BoxDecoration(
        color:
            getTicketStatusProperties(TicketStatusExtension.fromString(status))
                .color,
        borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(8.r), bottomStart: Radius.circular(8.r)),
      ),
    );
  }
}

class TenantTicketHeader extends StatelessWidget {
  const TenantTicketHeader({super.key, required this.ticket});

  final TicketModel ticket;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TicketStatusWidget(status: ticket.status ?? ''),
            TicketTypeWidget(type: ticket.type ?? ''),
          ].joinWith(8.horizontalSpace),
        ),
        Text('${S.current.ticketId}: #${ticket.id}',
            style: getBoldStyle(
              fontSize: 12.sp,
              color: const Color.fromRGBO(179, 182, 189, 1),
            ))
      ],
    );
  }
}

class TenantTicketItemShimmer extends StatelessWidget {
  const TenantTicketItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorsManager.white,
          border: Border.all(color: ColorsManager.grey, width: 1.sp),
          borderRadius: BorderRadius.circular(8.r)),
      child: Row(
        children: [
          Container(width: 8.sp),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.all(10.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomShimmer(height: 15.h, width: 80.w),
                      Expanded(child: CustomShimmer(height: 15.h, width: 60.w)),
                      CustomShimmer(height: 20.h, width: 120.w)
                    ].joinWith(8.horizontalSpace),
                  ),
                  CustomShimmer(height: 20.h, width: 250.w),
                  CustomShimmer(height: 15.h, width: 200.w)
                ].joinWith(10.verticalSpace),
              ),
            ),
          )
        ].joinWith(8.horizontalSpace),
      ),
      // child:
    );
  }
}
