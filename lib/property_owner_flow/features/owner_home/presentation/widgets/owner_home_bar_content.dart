part of 'owner_home_widgets_imports.dart';

class OwnerHomeAppbarContent extends StatelessWidget {
  const OwnerHomeAppbarContent({super.key});

  @override
  Widget build(BuildContext context) {
    final UserModel userModel = getIt<UserCubit>().state.userModel!;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: 40.sp,
            height: 40.sp,
            decoration: BoxDecoration(
                color: ColorsManager.black, shape: BoxShape.circle)),
        8.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${S.current.welcome} ${userModel.firstName ?? ''}',
              style: getBoldStyle(
                fontSize: 16.sp,
                color: ColorsManager.black,
              ),
            ),
            4.verticalSpace,
            Text(S.current.propertyOwner,
                style: getBoldStyle(
                    fontSize: 11.sp, color: ColorsManager.greyLight)),
          ],
        ),
      ],
    );
  }
}
