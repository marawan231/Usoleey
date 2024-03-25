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
      height: 320.h,
      child: Stack(
        children: [
          CachedNetworkImage(
              imageUrl: '${unitDetailsModel.image ?? ''}',
              width: double.infinity,
              height: 250.h),
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
                        fontSize: 16.sp),
                  ),
                  12.verticalSpace,
                  CustomTextButton.icon(
                      icon: SvgPicture.asset(AssetsManager.editIcon),
                      margin: EdgeInsets.symmetric(horizontal: 40.w),
                      onPressed: () {
                        Go.toNamed(NamedRoutes.updateUnit,
                            arguments: UpdateUnitScreen(
                                unitDetailsModel: unitDetailsModel));
                      },
                      title: S.current.unitInfromationEdit)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
