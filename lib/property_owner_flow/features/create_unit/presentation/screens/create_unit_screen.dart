part of 'create_unit_screens_imports.dart';

class CreateUnitScreen extends StatelessWidget {
  const CreateUnitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: getIt<CreateUnitCubit>(), child: CreateUnitView());
  }
}

class CreateUnitView extends StatefulWidget {
  const CreateUnitView({super.key});

  @override
  State<CreateUnitView> createState() => _CreateUnitViewState();
}

class _CreateUnitViewState extends State<CreateUnitView> {
  @override
  void initState() {
    getIt<CreateUnitCubit>().initData();
    super.initState();
  }

  @override
  void dispose() {
    CreateUnitUtils.disposeControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateUnitCubit, CreateUnitState>(
      builder: (context, state) {
        return PopScope(
          canPop: state.createUnitState != RequestState.loading,
          child: IgnorePointer(
            ignoring: state.createUnitState == RequestState.loading,
            child: Scaffold(
                appBar: SharedAppBar(title: S.current.createUnit),
                body: const CreateUnitForm()),
          ),
        );
      },
    );
  }
}
