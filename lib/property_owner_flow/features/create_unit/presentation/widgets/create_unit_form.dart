part of 'create_unit_widgets_imports.dart';

class CreateUnitForm extends StatelessWidget {
  const CreateUnitForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: CreateUnitUtils.formKey,
        child: ListView(
            children: [
          UnitImage(),
          UnitInformation(),
          UnitSpecifications(),
          UnitProperty(),
          CreateUnitButton()
        ].joinWith(32.verticalSpace)));
  }
}
