part of'create_unit_widgets_imports.dart';

class CreateUnitButton extends StatelessWidget {
  const CreateUnitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: BlocBuilder<CreateUnitCubit, CreateUnitState>(
        builder: (context, state) {
          return AppTextButton(
              buttonText: S.current.save,
              isLoading: state.createUnitState == RequestState.loading,
              onPressed: () => getIt<CreateUnitCubit>().createUnit(
                  formKey: CreateUnitUtils.formKey,
                  createUnitControllers:
                  CreateUnitUtils.createUnitControllers));
        },
      ),
    );
  }
}
