part of 'my_tickets_widgets_imports.dart';

class ProcessingTickets extends StatefulWidget {
  const ProcessingTickets({super.key});

  @override
  State<ProcessingTickets> createState() => _ProcessingTicketsState();
}

class _ProcessingTicketsState extends State<ProcessingTickets> {
  late final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    getIt<MyTicketsCubit>().getProcessingTickets(firstTime: true);
    scrollController.onScrollEndsListener(
        () => getIt<MyTicketsCubit>().getProcessingTickets());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyTicketsCubit, MyTicketsState>(
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () =>
              getIt<MyTicketsCubit>().getProcessingTickets(firstTime: true),
          child: BaseRemoteWidget(
              requestState: state.getProcessingTicketsState,
              loadingWidget: TicketsListShimmer(),
              successWidget: state.processingTickets.isNotEmpty
                  ? CustomPaginationList(
                      scrollController: scrollController,
                      itemBuilder: (index) => TicketItem(
                          ticket: state.processingTickets[index],
                          showDetailsButton: true),
                      allListCount: getIt<MyTicketsCubit>().processingCount,
                      paginationList: state.processingTickets)
                  : EmptyLottie(
                      lottiePath: AssetsManager.emptyTickets,
                      title: S.current.noTicketsProcess,
                      subTitle: '',
                      isButtonVisible: false,
                      padding: 0)),
        );
      },
    );
  }
}
