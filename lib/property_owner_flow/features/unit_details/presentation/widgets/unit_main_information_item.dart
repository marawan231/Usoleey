part of'unit_details_widgets_imports.dart';

class UnitMainInformationItem extends StatelessWidget {
  final String title, value;

  const UnitMainInformationItem(
      {super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(title,
          style: getBoldStyle(color: ColorsManager.greyLight, fontSize: 11.sp)),
      14.verticalSpace,
      Text(value,
          style: getRegularStyle(
              color: ColorsManager.primaryDark, fontSize: 14.sp))
    ]);
  }
}
