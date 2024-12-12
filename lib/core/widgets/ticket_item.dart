import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/extensions/seperator_helper.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/widgets/custom_cached_image.dart';

import '../../generated/l10n.dart';
import '../../property_owner_flow/features/owner_home/data/models/home_model.dart';
import '../../property_owner_flow/features/ticket_details/presentation/screens/ticket_details_screen_imports.dart';
import '../extensions/ticket_status_extention.dart';
import '../extensions/ticket_type_extention.dart';
import '../navigator/named_routes.dart';
import '../navigator/navigator.dart';
import '../res/custom_text_styles.dart';
import '../theming/colors.dart';
import '../utils/utils.dart';
import 'custom_text_button.dart';

class TicketItem extends StatelessWidget {
  const TicketItem(
      {super.key, required this.ticket, this.showDetailsButton = false});

  final TicketModel ticket;
  final bool showDetailsButton;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Go.toNamed(NamedRoutes.ticketDetails),
      child: Container(
        width: MediaQuery.of(context).size.width -
            24 -
            MediaQuery.of(context).size.width * 0.15,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
            color: ColorsManager.white,
            border: Border.all(color: ColorsManager.grey, width: 1),
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                TicketStatusWidget(status: ticket.status ?? ''),
                8.horizontalSpace,
                TicketTypeWidget(type: ticket.type ?? ''),
                Spacer(),
                Text(
                  formatCreatedAtAgo(ticket.createdAt ?? ''),
                  style: getBoldStyle(
                      color: ColorsManager.greyMedium, fontSize: 11),
                )
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                    minRadius: 18,
                    backgroundColor: ColorsManager.greyLighter,
                    child: CircleAvatar(
                      minRadius: 16,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(26),
                        child: CustomCachedImage(
                          height: 36,
                          width: 36,
                          image: ticket.unit?.tenant!.photo ?? '',
                        ),
                      ),
                    )),
                8.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${ticket.unit?.tenant!.firstNameAr ?? ' '} ${ticket.unit?.tenant!.lastNameAr ?? ' '}',
                      style: getBoldStyle(
                          fontSize: 14, color: ColorsManager.primaryDark),
                    ),
                    6.verticalSpace,
                    Text(
                      ticket.description ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: getRegularStyle(
                          fontSize: 12, color: ColorsManager.primaryDark),
                    ),
                    10.verticalSpace,
                  ],
                ),
              ],
            ),
            if (showDetailsButton)
              CustomTextButton(
                  onPressed: () {
                    Go.toNamed(NamedRoutes.ownerTicketDetails,
                        arguments: TicketDetailsScreen(id: ticket.id ?? 0));
                  },
                  title: S.current.showDetails)
          ].joinWith(10.verticalSpace),
        ),
        // child:
      ),
    );
  }
}

class TicketTypeWidget extends StatelessWidget {
  const TicketTypeWidget({super.key, required this.type});

  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
          color: ColorsManager.greyLighter,
          borderRadius: BorderRadius.circular(16)),
      child: Text(
        getTicketTypeProperties(TicketTypeExtension.fromString(type)).type,
        style: getBoldStyle(
          fontSize: 12,
          color: ColorsManager.greyLight,
        ),
      ),
    );
  }
}

class TicketStatusWidget extends StatelessWidget {
  const TicketStatusWidget({super.key, required this.status});

  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
            color: getTicketStatusProperties(
                    TicketStatusExtension.fromString(status))
                .backgroundColor,
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          children: [
            Icon(Icons.circle,
                color: getTicketStatusProperties(
                        TicketStatusExtension.fromString(status))
                    .color,
                size: 8),
            4.horizontalSpace,
            Text(
              getTicketStatusProperties(
                      TicketStatusExtension.fromString(status))
                  .status,
              style: getBoldStyle(
                fontSize: 12,
                color: getTicketStatusProperties(
                        TicketStatusExtension.fromString(status))
                    .color,
              ),
            ),
          ],
        ));
  }
}
