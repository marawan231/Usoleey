part of 'unit_details_widgets_imports.dart';

class RecentTickets extends StatelessWidget {
  final List<TicketModel> tickets;

  const RecentTickets({super.key, required this.tickets});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.current.latestPropertyTickets,
            style:
                getBoldStyle(color: ColorsManager.primaryDark, fontSize: 16.sp),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: tickets
                    .map((ticket) => TicketItem(ticket: ticket))
                    .toList()
                    .joinWith(8.horizontalSpace)),
          ),
          CustomTextButton.icon(
              height: 48.h,
              fontSize: 16.sp,
              onPressed: () {
                Go.toNamed(NamedRoutes.ownerTikcets);
              },
              icon: Icon(Icons.add),
              title: S.current.showAllTickets)
        ].joinWith(10.verticalSpace),
      ),
    );
  }
}
