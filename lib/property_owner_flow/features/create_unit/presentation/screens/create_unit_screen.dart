part of 'create_unit_screens_imports.dart';

class CreateUnitScreen extends StatelessWidget {
  const CreateUnitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CreateUnitView();
  }
}

class CreateUnitView extends StatelessWidget {
  const CreateUnitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SharedAppBar(title: S.current.createUnit),
        body: const CreateUnitForm());
  }
}
