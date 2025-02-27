part of 'owner_property_details_screens_imports.dart';

class OwnerPropertyDetailsScreen extends StatelessWidget {
  final int id;

  const OwnerPropertyDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: getIt<PropertyDetailsCubit>(),
        child: PropertyDetailsView(id: id));
  }
}

class PropertyDetailsView extends StatefulWidget {
  final int id;

  const PropertyDetailsView({super.key, required this.id});

  @override
  State<PropertyDetailsView> createState() => _PropertyDetailsViewState();
}

class _PropertyDetailsViewState extends State<PropertyDetailsView> {
  @override
  void initState() {
    getIt<PropertyDetailsCubit>().getPropertyDetails(id: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PropertyDetailsCubit, PropertyDetailsState>(
        builder: (context, state) {
          return BaseRemoteWidget(
              requestState: state.getProperyDetailsState,
              successWidget: state.propertDetailsModel != null
                  ? PropertyDetailsBody(
                      propertDetailsModel: state.propertDetailsModel!)
                  : const SizedBox());
        },
      ),
    );
  }
}

class PropertyDetailsBody extends StatelessWidget {
  final PropertDetailsModel propertDetailsModel;

  const PropertyDetailsBody({super.key, required this.propertDetailsModel});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PropertyDetailsHeader(propertDetailsModel: propertDetailsModel),
        PropertyMainInformation(propertDetailsModel: propertDetailsModel),
        if (propertDetailsModel.units != null &&
            propertDetailsModel.units!.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(S.current.units,
                    style: getBoldStyle(
                        color: ColorsManager.primaryDark, fontSize: 16)),
              ),
              10.verticalSpace,
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => CustomBorderContainer(
                          child: Row(
                        children: [
                          CircleAvatar(
                            maxRadius: 25,
                            backgroundColor: ColorsManager.greyLighter,
                            child: SvgPicture.asset(
                              AssetsManager.navbarHome,
                              // ignore: deprecated_member_use
                              color: index.isEven
                                  ? ColorsManager.primary
                                  : ColorsManager.brown,
                            ),
                          ),
                          8.horizontalSpace,
                          Expanded(
                              child: Text(
                            propertDetailsModel.units?[index].address ?? '',
                            style: getBoldStyle(
                                color: ColorsManager.primaryDark, fontSize: 14),
                          ))
                        ],
                      )),
                  separatorBuilder: (context, index) => 8.verticalSpace,
                  itemCount: propertDetailsModel.units!.length),
            ],
          ),
        if (propertDetailsModel.tenants != null &&
            propertDetailsModel.tenants!.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(S.current.tenantInformation,
                      style: getBoldStyle(
                          color: ColorsManager.primaryDark, fontSize: 16))),
              ListView.separated(
                  itemBuilder: (context, index) => TenantItem(
                      tenantModel: propertDetailsModel.tenants![index]),
                  separatorBuilder: (context, index) => 8.verticalSpace,
                  itemCount: propertDetailsModel.tenants?.length ?? 0),
              10.verticalSpace,
            ],
          )
      ].joinWith(24.verticalSpace),
    );
  }
}

class PropertyDetailsHeader extends StatelessWidget {
  const PropertyDetailsHeader({
    super.key,
    required this.propertDetailsModel,
  });

  final PropertDetailsModel propertDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: Stack(
        children: [
          CustomCachedImage(
              image: '${propertDetailsModel.image ?? ''}',
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
                    '${propertDetailsModel.name ?? ''} , ${propertDetailsModel.district ?? ''} , ${propertDetailsModel.street ?? ''}',
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
                        Go.toNamed(NamedRoutes.updateProperty,
                            arguments: UpdatePropertyScreen(
                                propertDetailsModel: propertDetailsModel));
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

class PropertyMainInformation extends StatelessWidget {
  final PropertDetailsModel propertDetailsModel;

  const PropertyMainInformation({super.key, required this.propertDetailsModel});

  @override
  Widget build(BuildContext context) {
    return CustomBorderContainer(
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            PropertyMainInformationItem(
                title: S.current.totalRent,
                value: propertDetailsModel.totalRent.toString()),
            PropertyMainInformationItem(
                title: S.current.tenantsCount,
                value: (propertDetailsModel.tenants?.length ?? 0).toString()),
            PropertyMainInformationItem(
                title: S.current.units,
                value: propertDetailsModel.units?.length.toString() ?? '0'),
          ].joinWith(VerticalDivider()),
        ),
      ),
    );
  }
}

class PropertyMainInformationItem extends StatelessWidget {
  final String title, value;

  const PropertyMainInformationItem(
      {super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(title,
          style: getBoldStyle(color: ColorsManager.greyLight, fontSize: 11)),
      14.verticalSpace,
      Text(value,
          style:
              getRegularStyle(color: ColorsManager.primaryDark, fontSize: 14))
    ]);
  }
}
