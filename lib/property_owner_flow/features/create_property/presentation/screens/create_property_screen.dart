part of 'create_property_screens_imports.dart';

class CreatePropertyScreen extends StatelessWidget {
  const CreatePropertyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: getIt<CreatePropertyCubit>(), child: const CreatePropertyView());
  }
}

class CreatePropertyView extends StatelessWidget {
  const CreatePropertyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreatePropertyCubit, CreatePropertyState>(
        builder: (context, state) {
      return PopScope(
          canPop: state.createPropertyState != RequestState.loading,
          child: IgnorePointer(
              ignoring: state.createPropertyState == RequestState.loading,
              child: ListView(children: [
                10.verticalSpace,
                BottomSheetHeader(),
                CreatePropertyForm()
              ])));
    });
  }
}
