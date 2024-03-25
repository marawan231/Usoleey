part of 'unit_details_widgets_imports.dart';

class UnitDetailsBody extends StatelessWidget {
  final UnitDetailsModel unitDetailsModel;

  const UnitDetailsBody({super.key, required this.unitDetailsModel});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        UnitDetailsHeader(unitDetailsModel: unitDetailsModel),
        UnitMainInformation(unitDetailsModel: unitDetailsModel),
        if (unitDetailsModel.tenant != null)
          TenantDetails(tenantModel: unitDetailsModel.tenant!),
        if (unitDetailsModel.invoices != null &&
            unitDetailsModel.invoices!.isNotEmpty)
          Invoices(invoices: unitDetailsModel.invoices ?? []),
        if (unitDetailsModel.tickets != null &&
            unitDetailsModel.tickets!.isNotEmpty)
          RecentTickets(tickets: unitDetailsModel.tickets ?? []),
      ].joinWith(24.verticalSpace),
    );
  }
}
