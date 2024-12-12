part of 'create_unit_widgets_imports.dart';

class UnitProperty extends StatelessWidget {
  const UnitProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<CreateUnitCubit, CreateUnitState>(
          builder: (context, state) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(S.current.property,
                      style: getBoldStyle(
                          fontSize: 14, color: ColorsManager.primary)),
                  32.verticalSpace,
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectProperty(property: state.property),
                      ].joinWith(16.verticalSpace)),
                  if (state.property != null)
                    PropertyDetailsTextFields(property: state.property!),
                ]);
          },
        ));
  }
}
