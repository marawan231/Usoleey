part of 'owner_home_widgets_imports.dart';

class RecentTickets extends StatelessWidget {
  const RecentTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OwnerHomeCubit, OwnerHomeState>(
      builder: (context, state) {
        final homeModel = state.homeModel;
        return BaseRemoteWidget(
          requestState: state.getHomeStatsState,
          successWidget:
              homeModel != null && homeModel.recentTickets!.isNotEmpty
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(S.current.recentTickets,
                            style: getBoldStyle(
                              color: ColorsManager.primaryDark,
                              fontSize: 16.sp,
                            )),
                        16.verticalSpace,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: state.homeModel!.recentTickets!
                                  .map((e) => TicketItem(
                                      ticket: e, showDetailsButton: true))
                                  .toList()
                                  .joinWith(8.horizontalSpace)),
                        )
                      ],
                    )
                  : SizedBox(),
          loadingWidget: RecentTicketsShimmer(),
        );
      },
    );
  }
}
