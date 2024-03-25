part of 'my_real_estate_widgets_imports.dart';

class MyRealEstateItem extends StatelessWidget {
  final String address;
  final String? unitCount;
  final Color curveColor;
  final String? rent;
  final String? monthRent;
  final String? rentDate;
  final bool isProperty;
  final int id;

  const MyRealEstateItem(
      {super.key,
      required this.address,
      this.unitCount,
      required this.curveColor,
      this.rent,
      this.monthRent,
      this.rentDate,
      required this.isProperty,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return ItemBackground(
      isProperty: isProperty,
      curveColor: curveColor,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp),
            child: Text(
              address,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: getBoldStyle(
                  fontSize: 14.sp,
                  color: ColorsManager.primaryDark,
                  height: 1.3.sp),
            ),
          ),
          24.verticalSpace,
          if (unitCount != null)
            Text(
              '${unitCount!} ${S.current.units}',
              style:
                  getBoldStyle(color: ColorsManager.greyLight, fontSize: 11.sp),
            ),
          if (monthRent != null)
            Text(
              '${monthRent!} ${S.current.monthSar}',
              style:
                  getBoldStyle(color: ColorsManager.greyLight, fontSize: 11.sp),
            ),
          8.verticalSpace,
          if (rentDate != null)
            Container(
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
                      rentDate.toString(),
                      style: getBoldStyle(
                        fontSize: 12.sp,
                        color: ColorsManager.greenDark,
                      ),
                    ),
                  ],
                )),
          if (rent != null)
            Container(
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
                      rent.toString(),
                      style: getBoldStyle(
                        fontSize: 12.sp,
                        color: ColorsManager.greenDark,
                      ),
                    ),
                  ],
                )),
          16.horizontalSpace,
          16.verticalSpace,
          CustomTextButton(
              onPressed: () {
                isProperty
                    ? Go.toNamed(NamedRoutes.ownerPropertyDetails,
                        arguments: OwnerPropertyDetailsScreen(id: id))
                    : Go.toNamed(NamedRoutes.ownerUnitDetails,
                        arguments: OwnerUnitDetailsScreen(id: id));
              },
              title: S.current.showDetails),
          16.verticalSpace,
        ],
      ),
    );
  }
}
