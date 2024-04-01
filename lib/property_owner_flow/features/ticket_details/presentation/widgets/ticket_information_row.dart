part of'ticket_details_widget_imports.dart';

class TicketInformationRow extends StatelessWidget {
  final String title, value;

  const TicketInformationRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: getRegularStyle(
                color: ColorsManager.greyLight, fontSize: 14.sp)),
        Text(value,
            style:
            getBoldStyle(color: ColorsManager.primaryDark, fontSize: 14.sp))
      ],
    );
  }
}
