part of 'update_property_screens_imports.dart';

class UpdatePropertyScreen extends StatelessWidget {
  final PropertDetailsModel propertDetailsModel;

  const UpdatePropertyScreen({super.key, required this.propertDetailsModel});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: getIt<UpdatePropertyCubit>(),
        child: UpdatePropertyView(propertDetailsModel: propertDetailsModel));
  }
}

class UpdatePropertyView extends StatefulWidget {
  final PropertDetailsModel propertDetailsModel;

  const UpdatePropertyView({super.key, required this.propertDetailsModel});

  @override
  State<UpdatePropertyView> createState() => _UpdatePropertyViewState();
}

class _UpdatePropertyViewState extends State<UpdatePropertyView> {
  @override
  void initState() {
    getIt<UpdatePropertyCubit>().initValues(widget.propertDetailsModel);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
          title:
              '${widget.propertDetailsModel.name!} , ${widget.propertDetailsModel.district!} , ${widget.propertDetailsModel.street!}',
          withBottomRounded: false),
      body: ListView(
        children: [
          UpdatePropertyHeader(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<UpdatePropertyCubit, UpdatePropertyState>(
                builder: (context, state) {
                  return IgnorePointer(
                    ignoring: state.updateNameState == RequestState.loading,
                    child: UpdatePropertyItem(
                        title: S.current.name,
                        valueController: UpdatePropertyUtils
                            .updatePropertyControllers['name'],
                        enabled: state.nameEnabled,
                        isLoading:
                            state.updateNameState == RequestState.loading,
                        editTap: () => getIt<UpdatePropertyCubit>().updateName(
                            UpdatePropertyUtils
                                .updatePropertyControllers['name']!.text)),
                  );
                },
              ),
              BlocBuilder<UpdatePropertyCubit, UpdatePropertyState>(
                builder: (context, state) {
                  return IgnorePointer(
                    ignoring: state.updateInstrumentNumberState ==
                        RequestState.loading,
                    child: UpdatePropertyItem(
                        title: S.current.instrumentNumber,
                        valueController: UpdatePropertyUtils
                            .updatePropertyControllers['instrumentNumber'],
                        enabled: state.instrumentNumberEnabled,
                        textInputType: TextInputType.number,
                        isLoading: state.updateInstrumentNumberState ==
                            RequestState.loading,
                        editTap: () => getIt<UpdatePropertyCubit>()
                            .updateInstrumentNumber(UpdatePropertyUtils
                                .updatePropertyControllers['instrumentNumber']!
                                .text)),
                  );
                },
              ),
              BlocBuilder<UpdatePropertyCubit, UpdatePropertyState>(
                builder: (context, state) {
                  return IgnorePointer(
                    ignoring:
                        state.updateUnitsCountState == RequestState.loading,
                    child: UpdatePropertyItem(
                        title: S.current.unitsCount,
                        valueController: UpdatePropertyUtils
                            .updatePropertyControllers['unitsCount'],
                        enabled: state.unitsCountEnabled,
                        textInputType: TextInputType.number,
                        isLoading:
                            state.updateUnitsCountState == RequestState.loading,
                        editTap: () => getIt<UpdatePropertyCubit>()
                            .updateUnitsCount(UpdatePropertyUtils
                                .updatePropertyControllers['unitsCount']!
                                .text)),
                  );
                },
              ),
              8.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(S.current.unitAddress,
                    style: getBoldStyle(
                        color: ColorsManager.primary, fontSize: 16)),
              ),
              8.verticalSpace,
              BlocBuilder<UpdatePropertyCubit, UpdatePropertyState>(
                builder: (context, state) {
                  return IgnorePointer(
                    ignoring: state.updateCityState == RequestState.loading,
                    child: UpdatePropertyItem(
                        title: S.current.city,
                        valueController: UpdatePropertyUtils
                            .updatePropertyControllers['city'],
                        enabled: state.cityEnabled,
                        isLoading:
                            state.updateCityState == RequestState.loading,
                        editTap: () => getIt<UpdatePropertyCubit>().updateCity(
                            UpdatePropertyUtils
                                .updatePropertyControllers['city']!.text)),
                  );
                },
              ),
              BlocBuilder<UpdatePropertyCubit, UpdatePropertyState>(
                builder: (context, state) {
                  return IgnorePointer(
                    ignoring: state.updateDistrictState == RequestState.loading,
                    child: UpdatePropertyItem(
                        title: S.current.district,
                        valueController: UpdatePropertyUtils
                            .updatePropertyControllers['district'],
                        enabled: state.districtEnabled,
                        isLoading:
                            state.updateDistrictState == RequestState.loading,
                        editTap: () => getIt<UpdatePropertyCubit>()
                            .updateDistrict(UpdatePropertyUtils
                                .updatePropertyControllers['district']!.text)),
                  );
                },
              ),
              BlocBuilder<UpdatePropertyCubit, UpdatePropertyState>(
                builder: (context, state) {
                  return IgnorePointer(
                    ignoring: state.updateStreetState == RequestState.loading,
                    child: UpdatePropertyItem(
                        title: S.current.street,
                        valueController: UpdatePropertyUtils
                            .updatePropertyControllers['street'],
                        enabled: state.streetEnabled,
                        isLoading:
                            state.updateStreetState == RequestState.loading,
                        editTap: () => getIt<UpdatePropertyCubit>()
                            .updateStreet(UpdatePropertyUtils
                                .updatePropertyControllers['street']!.text)),
                  );
                },
              ),
              BlocBuilder<UpdatePropertyCubit, UpdatePropertyState>(
                builder: (context, state) {
                  return IgnorePointer(
                    ignoring: state.updateAddressState == RequestState.loading,
                    child: UpdatePropertyItem(
                        title: S.current.address,
                        valueController: UpdatePropertyUtils
                            .updatePropertyControllers['address'],
                        enabled: state.addressEnabled,
                        isLoading:
                            state.updateAddressState == RequestState.loading,
                        editTap: () => getIt<UpdatePropertyCubit>()
                            .updateAddress(UpdatePropertyUtils
                                .updatePropertyControllers['address']!.text)),
                  );
                },
              ),
              BlocBuilder<UpdatePropertyCubit, UpdatePropertyState>(
                builder: (context, state) {
                  return IgnorePointer(
                    ignoring:
                        state.updateBlockNumberState == RequestState.loading,
                    child: UpdatePropertyItem(
                        title: S.current.unitNumber,
                        valueController: UpdatePropertyUtils
                            .updatePropertyControllers['blockNumber'],
                        enabled: state.blockNumberEnabled,
                        isLoading: state.updateBlockNumberState ==
                            RequestState.loading,
                        editTap: () => getIt<UpdatePropertyCubit>()
                            .updateBlockNumber(UpdatePropertyUtils
                                .updatePropertyControllers['blockNumber']!
                                .text)),
                  );
                },
              ),
              BlocBuilder<UpdatePropertyCubit, UpdatePropertyState>(
                builder: (context, state) {
                  return IgnorePointer(
                    ignoring:
                        state.updatePostalCodeState == RequestState.loading,
                    child: UpdatePropertyItem(
                        title: S.current.postalCode,
                        valueController: UpdatePropertyUtils
                            .updatePropertyControllers['postalCode'],
                        enabled: state.postalCodeEnabled,
                        isLoading:
                            state.updatePostalCodeState == RequestState.loading,
                        editTap: () => getIt<UpdatePropertyCubit>()
                            .updatePostalCode(UpdatePropertyUtils
                                .updatePropertyControllers['postalCode']!
                                .text)),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

class UpdatePropertyHeader extends StatelessWidget {
  const UpdatePropertyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        children: [
          BlocBuilder<UpdatePropertyCubit, UpdatePropertyState>(
            builder: (context, state) {
              return state.updateImageState != RequestState.loading
                  ? Center(
                      child: CustomCachedImage(
                          image: state.propertyImage,
                          height: 250,
                          width: double.infinity),
                    )
                  : Center(child: CupertinoActivityIndicator());
            },
          ),
          PositionedDirectional(
            bottom: 22,
            start: 24,
            child: InkWell(
              onTap: getIt<UpdatePropertyCubit>().updatePropertyImage,
              child: CircleAvatar(
                backgroundColor: ColorsManager.primary,
                maxRadius: 29,
                child: SvgPicture.asset(AssetsManager.editIcon,
                    // ignore: deprecated_member_use
                    color: ColorsManager.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class UpdatePropertyItem extends StatelessWidget {
  const UpdatePropertyItem(
      {super.key,
      required this.title,
      this.valueController,
      this.leadingWidget,
      this.enabled,
      this.editTap,
      this.readonly,
      this.isLoading = false,
      this.textInputType});

  final String title;
  final TextEditingController? valueController;
  final Widget? leadingWidget;
  final bool? enabled;
  final void Function()? editTap;
  final bool? readonly;
  final bool isLoading;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: getRegularStyle(
                        fontSize: 14, color: ColorsManager.greyLight)),
                16.verticalSpace,
                if (valueController != null)
                  SizedBox(
                    width: 227,
                    child: enabled ?? false
                        ? TextField(
                            keyboardType: textInputType ?? TextInputType.name,
                            decoration: InputDecoration(),
                            controller: valueController,
                            readOnly: readonly ?? false)
                        : Text(
                            valueController!.text,
                            style: getBoldStyle(
                                fontSize: 14,
                                color: ColorsManager.primary,
                                height: 1.5),
                          ),
                  ),
              ],
            ),
          ),
          leadingWidget ?? EditButton(editTap: editTap!, isLoading: isLoading)
        ],
      ),
    );
  }
}

class EditButton extends StatelessWidget {
  final bool isLoading;
  final void Function() editTap;

  const EditButton({super.key, required this.isLoading, required this.editTap});

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(child: CupertinoActivityIndicator())
        : InkWell(
            onTap: editTap,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                S.current.edit,
                style: getBoldStyle(fontSize: 14, color: ColorsManager.primary),
              ),
            ));
  }
}
