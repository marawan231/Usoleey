part of 'my_real_estate_widgets_imports.dart';

class MyRealEstatePropertyItem extends StatelessWidget {
  final String address;
  final String unitCount;
  final Color curveColor;
  final String rent;
  final int id;

  const MyRealEstatePropertyItem(
      {super.key,
      required this.address,
      required this.unitCount,
      required this.curveColor,
      required this.rent,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return ItemBackground(
      isProperty: true,
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
            '${unitCount} ${S.current.units}',
            style: getBoldStyle(color: ColorsManager.greyLight, fontSize: 11),
          ),
          8.verticalSpace,
          Rent(rent: rent.toString()),
          16.verticalSpace,
          CustomTextButton(
              onPressed: () => Go.toNamed(NamedRoutes.ownerPropertyDetails,
                  arguments: OwnerPropertyDetailsScreen(id: id)),
              title: S.current.showDetails),
        ],
      ),
    );
  }
}
