part of'my_real_estate_widgets_imports.dart';

class RentDate extends StatelessWidget {
  final String rentDate;

  const RentDate({super.key, required this.rentDate});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 4.sp),
        decoration: BoxDecoration(
            color: ColorsManager.green,
            borderRadius: BorderRadius.circular(16.r)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.calendar_today_outlined,
                color: ColorsManager.greenDark, size: 16.sp),
            4.horizontalSpace,
            Text(
              rentDate,
              style: getBoldStyle(
                fontSize: 12.sp,
                color: ColorsManager.greenDark,
              ),
            ),
          ],
        ));
  }
}
