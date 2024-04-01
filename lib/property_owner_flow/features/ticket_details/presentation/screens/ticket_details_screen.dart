part of 'ticket_details_screen_imports.dart';

class TicketDetailsScreen extends StatelessWidget {
  final int id;

  const TicketDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: getIt<TicketDetailsCubit>(),
        child: OwnerTicketDetailsView(id: id));
  }
}

class OwnerTicketDetailsView extends StatefulWidget {
  final int id;

  const OwnerTicketDetailsView({super.key, required this.id});

  @override
  State<OwnerTicketDetailsView> createState() => _OwnerTicketDetailsViewState();
}

class _OwnerTicketDetailsViewState extends State<OwnerTicketDetailsView> {
  @override
  void initState() {
    getIt<TicketDetailsCubit>().getTicketDetails(id: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TicketDetailsBody(),
        bottomNavigationBar: TicketDetailsBottomButton());
  }
}
