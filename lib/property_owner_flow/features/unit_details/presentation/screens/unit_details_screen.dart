part of 'unit_details_screens_imports.dart';

class OwnerUnitDetailsScreen extends StatelessWidget {
  final int id;

  const OwnerUnitDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: getIt<UnitDetailsCubit>(), child: OwnerUnitDetailsView(id: id));
  }
}

class OwnerUnitDetailsView extends StatefulWidget {
  final int id;

  const OwnerUnitDetailsView({super.key, required this.id});

  @override
  State<OwnerUnitDetailsView> createState() => _OwnerUnitDetailsViewState();
}

class _OwnerUnitDetailsViewState extends State<OwnerUnitDetailsView> {
  @override
  void initState() {
    getIt<UnitDetailsCubit>().getUnitDetails(id: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UnitDetailsCubit, UnitDetailsState>(
        builder: (context, state) {
          return BaseRemoteWidget(
              requestState: state.getUnitDetailsState,
              successWidget: state.unitDetailsModel != null
                  ? UnitDetailsBody(unitDetailsModel: state.unitDetailsModel!)
                  : const SizedBox());
        },
      ),
    );
  }
}

