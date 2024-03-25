part of'unit_details_widgets_imports.dart';

class TenantRowItem extends StatelessWidget {
  final String icon, value, buttonTitle;

  const TenantRowItem(
      {super.key,
        required this.icon,
        required this.value,
        required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon),
        8.horizontalSpace,
        Text(value,
            style: getRegularStyle(
                color: ColorsManager.primaryDark, fontSize: 14.sp)),
        Spacer(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
          decoration: BoxDecoration(
              color: ColorsManager.primaryLighter,
              borderRadius: BorderRadius.circular(16.r)),
          child: Text(
            buttonTitle,
            style: getBoldStyle(color: ColorsManager.primary, fontSize: 16.sp),
          ),
        )
      ],
    );
  }
}
