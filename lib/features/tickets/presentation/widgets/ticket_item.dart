import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/features/tickets/data/models/tickets_model.dart';
import 'package:flutter_complete_project/features/tickets/presentation/widgets/ticket_status.dart';
import 'package:flutter_complete_project/features/tickets/presentation/widgets/ticket_type.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketItem extends StatelessWidget {
  const TicketItem({super.key, required this.ticket});
  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    return _buildTicketItem();
  }

  _buildTicketItem() {
    return InkWell(
      onTap: () => Go.toNamed(NamedRoutes.ticketDetails),
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 24.sp, vertical: 24.sp),
        decoration: BoxDecoration(
          color: ColorsManager.white,
          border: Border.all(color: ColorsManager.grey, width: 1.sp),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          children: [
            _buildTicketStatusColor(),
            8.horizontalSpace,
            Expanded(child: _buildTicketBody()),
          ],
        ),
        // child:
      ),
    );
  }

  Widget _buildTicketStatusColor() {
    return Column(
      children: [
        Container(
          height: 100.sp,
          width: 8.sp,
          decoration: BoxDecoration(
            color: ColorsManager.greenDark,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8.r),
              bottomRight: Radius.circular(8.r),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTicketBody() {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 4.sp, end: 10.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildTicketInfo(),
          10.verticalSpace,
          Text(
            ticket.description ?? '',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: getBoldStyle(fontSize: 14.sp, color: ColorsManager.black),
          ),
          10.verticalSpace,
          Text('تم الإنشاء: منذ ${getNumberOfDaysToGetCreatedPeroid()} أيام',
              style: getBoldStyle(
                fontSize: 11.sp,
                color: ColorsManager.greyMedium,
              )),
        ],
      ),
    );
  }

  getNumberOfDaysToGetCreatedPeroid() {
    DateTime createdTime = DateTime.parse(ticket.createdAt ?? '');
    DateTime currentTime = DateTime.now();
    return currentTime.difference(createdTime).inDays;
  }

  _buildTicketInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            _buildTicketStatus(),
            8.horizontalSpace,
            _buildTicketType(),
          ],
        ),
        // Spacer(),
        _buildTicketHashCode(),
      ],
    );
  }

  _buildTicketStatus() {
    return TicketStatus(
      status: ticket.status ?? '',
    );
  }

  _buildTicketType() {
    return TicketType(
      type: ticket.type ?? '',
    );
  }

  _buildTicketHashCode() {
    return Text(
      'رقم التذكرة:#${ticket.id}',
      style: getBoldStyle(
        fontSize: 12.sp,
        color: const Color.fromRGBO(179, 182, 189, 1),
      ),
    );
  }
}
