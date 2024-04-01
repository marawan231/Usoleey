part of 'ticket_details_widget_imports.dart';

class TicketInformation extends StatelessWidget {
  final TicketDetailsModel ticketDetailsModel;

  const TicketInformation({super.key, required this.ticketDetailsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          TicketInformationRow(
              title: S.current.ticketType,
              value: getTicketTypeProperties(TicketTypeExtension.fromString(
                      ticketDetailsModel.type ?? ''))
                  .type),
          TicketInformationRow(
              title: S.current.ticketCreatedDate,
              value: getCreatedAt(ticketDetailsModel.createdAt!)),
          TicketInformationRow(
              title: S.current.ticketUpdatedDate,
              value: getCreatedAt(ticketDetailsModel.updatedAt!)),
        ].joinWith(16.verticalSpace),
      ),
    );
  }
}
