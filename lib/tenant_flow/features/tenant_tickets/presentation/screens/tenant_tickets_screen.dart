part of 'tenant_ticket_screens_imports.dart';

class TenantTicketsScreen extends StatelessWidget {
  const TenantTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: getIt<TenantTicketsCubit>(), child: TicketsView());
  }
}

class TicketsView extends StatefulWidget {
  const TicketsView({super.key});

  @override
  State<TicketsView> createState() => _TicketsViewState();
}

class _TicketsViewState extends State<TicketsView> {
  late final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    getIt<TenantTicketsCubit>()
        .getTenantTickets(firstTime: true, cleareFilter: true);
    scrollController.onScrollEndsListener(
        () => getIt<TenantTicketsCubit>().getTenantTickets());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
          title: S.current.myTickets,
          leading: IconButton(
            icon: Icon(Icons.add, size: 24.sp),
            onPressed: () =>
                getIt<TenantTicketsCubit>().openTicketCreationFlow(context),
          )),
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FilterByButton(),
                TenantTicketsList(scrollController: scrollController)
              ].joinWith(16.verticalSpace))),
    );
  }
}

class TenantTicketsList extends StatelessWidget {
  const TenantTicketsList({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TenantTicketsCubit, TenantTicketsState>(
      builder: (context, state) {
        return Expanded(
          child: BaseRemoteWidget(
              requestState: state.getTenantTickets,
              loadingWidget: TenantTicketsShimmer(),
              successWidget: state.tickets.isNotEmpty
                  ? CustomPaginationList(
                      padding: EdgeInsets.zero,
                      scrollController: scrollController,
                      childAspectRatio: 3.5,
                      itemBuilder: (index) =>
                          TenantTicketItem(ticket: state.tickets[index]),
                      allListCount: getIt<TenantTicketsCubit>().count,
                      paginationList: state.tickets)
                  : EmptyLottie(
                      lottiePath: AssetsManager.emptyTickets,
                      title: S.current.noTickets,
                      subTitle: '',
                      isButtonVisible: false,
                      padding: 0)),
        );
      },
    );
  }
}

class TenantTicketsShimmer extends StatelessWidget {
  const TenantTicketsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: List.generate(10, (index) => TenantTicketItemShimmer())
            .joinWith(8.verticalSpace));
  }
}
