part of'unit_details_widgets_imports.dart';


class UnitMainInformation extends StatelessWidget {
  final UnitDetailsModel unitDetailsModel;

  const UnitMainInformation({super.key, required this.unitDetailsModel});

  @override
  Widget build(BuildContext context) {
    return CustomBorderContainer(
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            UnitMainInformationItem(
                title: S.current.rent, value: unitDetailsModel.rent.toString()),
            UnitMainInformationItem(
                title: S.current.openTickets,
                value: unitDetailsModel.ticketsCount.toString()),
            UnitMainInformationItem(
                title: S.current.bills,
                value: unitDetailsModel.invoicesCount.toString()),
          ].joinWith(VerticalDivider()),
        ),
      ),
    );

  }
}
