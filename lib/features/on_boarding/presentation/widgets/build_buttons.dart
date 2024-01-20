part of'on_boarding_widgets_imports.dart';

class BuildButtons extends StatelessWidget {
  const BuildButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppTextButton(
            // onPressed: () => Go.toNamed(NamedRoutes.phone),
            buttonText: "S.of(context).login"),
        // SizedBox(height: AppPadding.pH10),
       AppTextButton(
            // onPressed: () => Go.toNamed(NamedRoutes.phone),
            buttonText: "S.of(context).login"),
      ],
    );
  }
}
