part of'ticket_details_widget_imports.dart';

class TicketContent extends StatelessWidget {
  final String description;

  const TicketContent({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Text(S.current.ticketContent,
              style: getBoldStyle(
                  fontSize: 14.sp, color: ColorsManager.primaryDark)),
        ),
        8.verticalSpace,
        CustomBorderContainer(
            color: ColorsManager.grey99,
            child: Text(description,
                style: getRegularStyle(
                    fontSize: 14.sp, color: ColorsManager.primaryDark)))
      ],
    );
  }
}
