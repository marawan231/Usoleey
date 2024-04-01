part of 'my_tickets_widgets_imports.dart';

class SolvedTickets extends StatefulWidget {
  const SolvedTickets({super.key});

  @override
  State<SolvedTickets> createState() => _SolvedTicketsState();
}

class _SolvedTicketsState extends State<SolvedTickets> {
  late final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    getIt<MyTicketsCubit>().getSolvedTickets(firstTime: true);
    scrollController
        .onScrollEndsListener(() => getIt<MyTicketsCubit>().getSolvedTickets());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyTicketsCubit, MyTicketsState>(
      builder: (context, state) {
        return BaseRemoteWidget(
            requestState: state.getSolvedTicketsState,
            loadingWidget: TicketsListShimmer(),
            successWidget: state.solvedTickets.isNotEmpty
                ? CustomPaginationList(
                    scrollController: scrollController,
                    itemBuilder: (index) => TicketItem(
                        ticket: state.solvedTickets[index],
                        showDetailsButton: true),
                    allListCount: getIt<MyTicketsCubit>().solvedCount,
                    paginationList: state.solvedTickets)
                : EmptyLottie(
                    lottiePath: AssetsManager.emptyTickets,
                    title: S.current.noTicketsSolved,
                    subTitle: '',
                    isButtonVisible: false,
                    padding: 0));
      },
    );
  }
}
