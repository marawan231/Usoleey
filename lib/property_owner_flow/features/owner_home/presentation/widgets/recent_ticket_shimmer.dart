part of 'owner_home_widgets_imports.dart';

class RecentTicketsShimmer extends StatelessWidget {
  const RecentTicketsShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomShimmer(height: 20, width: 100),
        16.verticalSpace,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(2, (index) => TicketShimmerItem())
                  .joinWith(8.horizontalSpace)),
        )
      ],
    );
  }
}
