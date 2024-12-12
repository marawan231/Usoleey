part of 'unit_details_widgets_imports.dart';

class TenantDetails extends StatelessWidget {
  final TenantModel tenantModel;

  const TenantDetails({super.key, required this.tenantModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            S.current.tenantInformation,
            style: getBoldStyle(color: ColorsManager.primaryDark, fontSize: 16),
          ),
        ),
        10.verticalSpace,
        TenantItem(tenantModel: tenantModel),
      ],
    );
  }
}

class TenantItem extends StatelessWidget {
  const TenantItem({
    super.key,
    required this.tenantModel,
  });

  final TenantModel tenantModel;

  @override
  Widget build(BuildContext context) {
    return CustomBorderContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            color: ColorsManager.greyLightest,
            child: Row(
              children: [
                CircleAvatar(
                  maxRadius: 20,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: CustomCachedImage(
                      height: 40,
                      image: tenantModel.photo ?? '',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                8.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tenantModel.firstNameAr! + ' ' + tenantModel.lastNameAr!,
                      style: getBoldStyle(
                          fontSize: 14, color: ColorsManager.primaryDark),
                    ),
                    8.verticalSpace,
                    Text(
                      S.current.tenant,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: getRegularStyle(
                          fontSize: 12, color: ColorsManager.primaryDark),
                    ),
                    10.verticalSpace,
                  ],
                ),
              ],
            ),
          ),
          16.verticalSpace,
          TenantRowItem(
            value: tenantModel.phoneNumber ?? '',
            icon: AssetsManager.phone,
            buttonTitle: S.current.call,
            buttonOnTap: () =>
                launchTel(phoneNumber: tenantModel.phoneNumber ?? ''),
          ),
          22.verticalSpace,
          Divider(indent: 20, endIndent: 20),
          22.verticalSpace,
          TenantRowItem(
            value: 'example@domain.com',
            icon: AssetsManager.mail,
            buttonTitle: S.current.sendMail,
          ),
          22.verticalSpace
        ],
      ),
    );
  }
}
