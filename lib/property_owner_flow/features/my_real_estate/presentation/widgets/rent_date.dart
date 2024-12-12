part of 'my_real_estate_widgets_imports.dart';

class RentDate extends StatelessWidget {
  final String rentDate;

  const RentDate({super.key, required this.rentDate});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
            color: ColorsManager.green,
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.calendar_today_outlined,
                color: ColorsManager.greenDark, size: 16),
            4.horizontalSpace,
            Text(
              rentDate,
              style: getBoldStyle(
                fontSize: 12,
                color: ColorsManager.greenDark,
              ),
            ),
          ],
        ));
  }
}
