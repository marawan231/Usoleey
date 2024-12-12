part of 'owner_tickets_screens_imports.dart';

class OwnerTicketsScreen extends StatelessWidget {
  final List<TicketModel> tickets;

  const OwnerTicketsScreen({super.key, required this.tickets});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: getIt<OwnerTicketsCubit>(),
        child: OwnerTicketsView(tickets: tickets));
  }
}

class OwnerTicketsView extends StatefulWidget {
  final List<TicketModel> tickets;

  const OwnerTicketsView({super.key, required this.tickets});

  @override
  State<OwnerTicketsView> createState() => _OwnerTicketsViewState();
}

class _OwnerTicketsViewState extends State<OwnerTicketsView> {
  @override
  void initState() {
    getIt<OwnerTicketsCubit>().updateTickets(widget.tickets);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(title: S.current.propertyTickets),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: Column(
          children: [
            TicketsTabBar(),
            16.verticalSpace,
            Expanded(child: BlocBuilder<OwnerTicketsCubit, OwnerTicketsState>(
                builder: (context, state) {
              return getIt<OwnerTicketsCubit>()
                      .filterTickets(state.tickets)
                      .isNotEmpty
                  ? ListView.separated(
                      separatorBuilder: (context, index) => 8.verticalSpace,
                      itemCount: getIt<OwnerTicketsCubit>()
                          .filterTickets(state.tickets)
                          .length,
                      itemBuilder: (context, index) => TicketItem(
                          ticket: getIt<OwnerTicketsCubit>()
                              .filterTickets(state.tickets)[index]))
                  : EmptyLottie(
                      lottiePath: AssetsManager.emptyTickets,
                      title: S.current.emptyTickets,
                      subTitle: '',
                      isButtonVisible: false,
                      padding: 0);
            }))
          ],
        ),
      ),
    );
  }
}

class TicketsTabBar extends StatelessWidget {
  const TicketsTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: [
        TabItem(name: S.current.all, index: 1),
        TabItem(name: S.current.active, index: 2),
        TabItem(name: S.current.processing, index: 3),
        TabItem(name: S.current.solved, index: 4),
        TabItem(name: S.current.canceled, index: 5),
      ].joinWith(8.horizontalSpace)),
    );
  }
}

class TabItem extends StatelessWidget {
  final String name;
  final int index;

  const TabItem({super.key, required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OwnerTicketsCubit, OwnerTicketsState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => getIt<OwnerTicketsCubit>().tabBarOnChange(index),
          child: Container(
            height: 36,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            decoration: BoxDecoration(
                color: index == state.selectedTab
                    ? ColorsManager.primary
                    : ColorsManager.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: ColorsManager.primary)),
            child: Text(name,
                style: getBoldStyle(
                    color: index == state.selectedTab
                        ? ColorsManager.white
                        : ColorsManager.primary,
                    fontSize: 12)),
          ),
        );
      },
    );
  }
}
