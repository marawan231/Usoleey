part of'create_unit_widgets_imports.dart';

class Switcher extends StatelessWidget {
  final String title;
  final bool value;
  final void Function(bool)? onChanged;

  const Switcher({super.key, required this.title, required this.onChanged, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: getRegularStyle(
                color: ColorsManager.greyLight, fontSize: 14.sp)),
        CupertinoSwitch(value: value, onChanged: onChanged)
      ],
    );
  }
}
