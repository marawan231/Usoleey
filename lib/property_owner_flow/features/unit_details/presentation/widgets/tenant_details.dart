part of'unit_details_widgets_imports.dart';

class TenantDetails extends StatelessWidget {
  final TenantModel tenantModel;

  const TenantDetails({super.key, required this.tenantModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Text(
            S.current.tenantInformation,
            style:
            getBoldStyle(color: ColorsManager.primaryDark, fontSize: 16.sp),
          ),
        ),
        10.verticalSpace,
        CustomBorderContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                color: ColorsManager.greyLightest,
                child: Row(
                  children: [
                    CircleAvatar(
                      minRadius: 20.sp,
                      // child: CachedNetworkImage(
                      //   imageUrl: tenantModel.photo ?? '',
                      // ),
                    ),
                    8.horizontalSpace,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tenantModel.firstNameAr! +
                              ' ' +
                              tenantModel.lastNameAr!,
                          style: getBoldStyle(
                              fontSize: 14.sp,
                              color: ColorsManager.primaryDark),
                        ),
                        8.verticalSpace,
                        Text(
                          S.current.tenant,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: getRegularStyle(
                              fontSize: 12.sp,
                              color: ColorsManager.primaryDark),
                        ),
                        10.verticalSpace,
                      ],
                    ),
                  ],
                ),
              ),
              16.verticalSpace,
              TenantRowItem(
                value: '050394638582',
                icon: AssetsManager.phone,
                buttonTitle: S.current.call,
              ),
              22.verticalSpace,
              Divider(indent: 20.w, endIndent: 20.w),
              22.verticalSpace,
              TenantRowItem(
                value: 'example@domain.com',
                icon: AssetsManager.mail,
                buttonTitle: S.current.sendMail,
              ),
              22.verticalSpace
            ],
          ),
        ),
      ],
    );
  }
}
