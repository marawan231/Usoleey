part of 'unit_details_widgets_imports.dart';

class UnitDetailsHeader extends StatelessWidget {
  const UnitDetailsHeader({
    super.key,
    required this.unitDetailsModel,
  });

  final UnitDetailsModel unitDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: Stack(
        children: [
          CustomCachedImage(
              image: '${unitDetailsModel.image ?? ''}',
              width: double.infinity,
              height: 250),
          PositionedDirectional(
            end: 0,
            child: IconButton(
              onPressed: Go.back,
              icon: Icon(
                Icons.arrow_forward,
                color: ColorsManager.white,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: CustomBorderContainer(
              child: Column(
                children: [
                  Text(
                    unitDetailsModel.address ?? '',
                    textAlign: TextAlign.center,
                    style: getBoldStyle(
                        height: 1.5,
                        color: ColorsManager.primaryDark,
                        fontSize: 16),
                  ),
                  12.verticalSpace,
                  CustomTextButton.icon(
                      icon: SvgPicture.asset(AssetsManager.editIcon),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      onPressed: () {
                        Go.toNamed(NamedRoutes.updateUnit,
                            arguments: UpdateUnitScreen(
                                unitDetailsModel: unitDetailsModel));
                      },
                      title: S.current.unitInformationEdit)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
