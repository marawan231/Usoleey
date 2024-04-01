part of 'my_tickets_widgets_imports.dart';

class ReviewingTickets extends StatefulWidget {
  const ReviewingTickets({super.key});

  @override
  State<ReviewingTickets> createState() => _ReviewingTicketsState();
}

class _ReviewingTicketsState extends State<ReviewingTickets> {
  late final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    getIt<MyTicketsCubit>().getReviewingTickets(firstTime: true);
    scrollController.onScrollEndsListener(
        () => getIt<MyTicketsCubit>().getReviewingTickets());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyTicketsCubit, MyTicketsState>(
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () =>
              getIt<MyTicketsCubit>().getReviewingTickets(firstTime: true),
          child: BaseRemoteWidget(
              requestState: state.getReviewingTicketsState,
              loadingWidget: TicketsListShimmer(),
              successWidget: state.reviewingTickets.isNotEmpty
                  ? CustomPaginationList(
                      scrollController: scrollController,
                      itemBuilder: (index) => TicketItem(
                            ticket: state.reviewingTickets[index],
                            showDetailsButton: true,
                          ),
                      allListCount: getIt<MyTicketsCubit>().reviewingCount,
                      paginationList: state.reviewingTickets)
                  : EmptyLottie(
                      lottiePath: AssetsManager.emptyTickets,
                      title: S.current.noTicketsReview,
                      subTitle: '',
                      isButtonVisible: false,
                      padding: 0)),
        );
      },
    );
  }
}

class TicketsListShimmer extends StatelessWidget {
  const TicketsListShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
      children: List.generate(10, (index) => TicketShimmerItem())
          .joinWith(8.verticalSpace),
    );
  }
}
