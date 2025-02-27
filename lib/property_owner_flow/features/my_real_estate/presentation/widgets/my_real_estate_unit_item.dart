part of 'my_real_estate_widgets_imports.dart';

class MyRealEstateUnitItem extends StatelessWidget {
  final String address;
  final Color curveColor;
  final String monthRent;
  final String rentDate;
  final int id;
  final String rentCollectionRate;

  const MyRealEstateUnitItem(
      {super.key,
      required this.curveColor,
      required this.address,
      required this.monthRent,
      required this.rentDate,
      required this.id,
      required this.rentCollectionRate});

  @override
  Widget build(BuildContext context) {
    return ItemBackground(
      isProperty: false,
      curveColor: curveColor,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(address,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: getBoldStyle(
                    fontSize: 14,
                    color: ColorsManager.primaryDark,
                    height: 1.3)),
          ),
          24.verticalSpace,
          Text(
            '${monthRent} ${rentCollectionRate == 'YEARLY' ? S.current.yearSar : S.current.monthSar}',
            style: getBoldStyle(color: ColorsManager.greyLight, fontSize: 11),
          ),
          8.verticalSpace,
          RentDate(rentDate: rentDate),
          16.verticalSpace,
          CustomTextButton(
              onPressed: () => Go.toNamed(NamedRoutes.ownerUnitDetails,
                  arguments: OwnerUnitDetailsScreen(id: id)),
              title: S.current.showDetails),
        ],
      ),
    );
  }
}
