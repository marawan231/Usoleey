part of 'my_tickets_screens_imports.dart';

class MyTicketsScreen extends StatelessWidget {
  const MyTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: getIt<MyTicketsCubit>(), child: const MyTicketsView());
  }
}

class MyTicketsView extends StatelessWidget {
  const MyTicketsView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: SharedAppBar(
            height: 100,
            leading: SizedBox(),
            title: S.current.myTickets,
            bottom: TabBar(
              labelStyle: getBoldStyle(fontSize: 12),
              labelColor: ColorsManager.primary,
              indicatorColor: ColorsManager.primary,
              indicatorSize: TabBarIndicatorSize.tab,
              dividerHeight: 0.001,
              tabs: [
                Tab(text: S.current.active),
                Tab(text: S.current.processing),
                Tab(text: S.current.solved)
              ],
            )),
        body: TabBarView(
          children: const [
            ReviewingTickets(),
            ProcessingTickets(),
            SolvedTickets()
          ],
        ),
      ),
    );
  }
}
