part of 'my_real_estate_widgets_imports.dart';

class AddUnitItem extends StatelessWidget {
  final String title;
  final Function() onTap;

  const AddUnitItem({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        decoration: BoxDecoration(
            border: Border.all(color: ColorsManager.grey),
            borderRadius: BorderRadius.circular(8.r)),
        child: Row(
          children: [
            SvgPicture.asset(AssetsManager.addUnit),
            8.horizontalSpace,
            Text(
              title,
              style: getBoldStyle(fontSize: 14, color: ColorsManager.primary),
            )
          ],
        ),
      ),
    );
  }
}