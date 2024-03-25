part of 'owner_tickets_screens_imports.dart';

class OwnerTicketsScreen extends StatelessWidget {
  const OwnerTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: getIt<OwnerTicketsCubit>(), child: OwnerTicketsView());
  }
}

class OwnerTicketsView extends StatefulWidget {
  const OwnerTicketsView({super.key});

  @override
  State<OwnerTicketsView> createState() => _OwnerTicketsViewState();
}

class _OwnerTicketsViewState extends State<OwnerTicketsView> {
  @override
  void initState() {
    getIt<OwnerTicketsCubit>().getTickets();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(title: S.current.propertyTickets),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
        child: Column(
          children: [
            TicketsTabBar(),
            16.verticalSpace,
            Expanded(child: BlocBuilder<OwnerTicketsCubit, OwnerTicketsState>(
                builder: (context, state) {
              return ListView.separated(
                  separatorBuilder: (context, index) => 8.verticalSpace,
                  itemCount: getIt<OwnerTicketsCubit>()
                      .filterTickets(state.tickets)
                      .length,
                  itemBuilder: (context, index) => TicketItem(
                      ticket: getIt<OwnerTicketsCubit>()
                          .filterTickets(state.tickets)[index]));
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
        TabItem(name: S.current.reviewing, index: 2),
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
            height: 36.h,
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 24.w),
            decoration: BoxDecoration(
                color: index == state.selectedTab
                    ? ColorsManager.primary
                    : ColorsManager.white,
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(color: ColorsManager.primary)),
            child: Text(name,
                style: getBoldStyle(
                    color: index == state.selectedTab
                        ? ColorsManager.white
                        : ColorsManager.primary,
                    fontSize: 12.sp)),
          ),
        );
      },
    );
  }
}
