part of'create_unit_widgets_imports.dart';

class PropertyDetailsTextFields extends StatelessWidget {
  const PropertyDetailsTextFields({super.key, required this.property});

  final PropertyModel property;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        0.verticalSpace,
        AppCustomTextFormField(
            controller: TextEditingController(text: property.district),
            hintText: S.current.district,
            readOnly: true,
            validator: (value) => value!.validateEmpty(),
            keyboardType: TextInputType.text),
        AppCustomTextFormField(
            controller: TextEditingController(text: property.street),
            hintText: S.current.sreet,
            readOnly: true,
            validator: (value) => value!.validateEmpty(),
            keyboardType: TextInputType.text),
        AppCustomTextFormField(
            controller: CreateUnitUtils.createUnitControllers['unitNumber'],
            hintText: S.current.unitNumber,
            validator: (value) => value!.validateEmpty(),
            keyboardType: TextInputType.text),
        AppCustomTextFormField(
            controller: TextEditingController(text: property.district),
            hintText: S.current.district,
            readOnly: true,
            validator: (value) => value!.validateEmpty(),
            keyboardType: TextInputType.text),
      ].joinWith(8.verticalSpace),
    );
  }
}
