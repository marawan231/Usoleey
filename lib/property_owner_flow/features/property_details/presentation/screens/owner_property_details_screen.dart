part of 'owner_property_details_screens_imports.dart';

class OwnerPropertyDetailsScreen extends StatelessWidget {
  final int id;

  const OwnerPropertyDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: getIt<PropertyDetailsCubit>(),
        child: PropertyDetailsView(id: id));
  }
}

class PropertyDetailsView extends StatefulWidget {
  final int id;

  const PropertyDetailsView({super.key, required this.id});

  @override
  State<PropertyDetailsView> createState() => _PropertyDetailsViewState();
}

class _PropertyDetailsViewState extends State<PropertyDetailsView> {
  @override
  void initState() {
    getIt<PropertyDetailsCubit>().getPropertyDetails(id: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
