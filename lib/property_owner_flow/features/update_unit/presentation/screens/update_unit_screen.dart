part of 'update_unit_screens_imports.dart';

class UpdateUnitScreen extends StatelessWidget {
  final UnitDetailsModel unitDetailsModel;

  const UpdateUnitScreen({super.key, required this.unitDetailsModel});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: getIt<UpdateUnitCubit>(),
        child: UpdateUnitView(unitDetailsModel: unitDetailsModel));
  }
}

class UpdateUnitView extends StatefulWidget {
  final UnitDetailsModel unitDetailsModel;

  const UpdateUnitView({super.key, required this.unitDetailsModel});

  @override
  State<UpdateUnitView> createState() => _UpdateUnitViewState();
}

class _UpdateUnitViewState extends State<UpdateUnitView> {
  @override
  void initState() {
    getIt<UpdateUnitCubit>().initValues(widget.unitDetailsModel);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
          title: widget.unitDetailsModel.address, withBottomRounded: false),
      body: ListView(
        children: [
          UpdateUnitHeader(),
          Column(
            children: [
              BlocBuilder<UpdateUnitCubit, UpdateUnitState>(
                builder: (context, state) {
                  return IgnorePointer(
                    ignoring: state.updateUnitState == RequestState.loading,
                    child: UpdateUnitItem(
                        title: S.current.unitName,
                        valueController:
                            UpdateUnitUtils.updateUnitControllers['name'],
                        enabled: state.nameEnabled,
                        isLoading:
                            state.updateNameState == RequestState.loading,
                        editTap: () => getIt<UpdateUnitCubit>().updateName(
                            UpdateUnitUtils
                                .updateUnitControllers['name']!.text)),
                  );
                },
              ),
              BlocBuilder<UpdateUnitCubit, UpdateUnitState>(
                builder: (context, state) {
                  return UpdateUnitItem(
                      title: S.current.rent,
                      valueController:
                          UpdateUnitUtils.updateUnitControllers['rent']!,
                      textInputType: TextInputType.number,
                      isLoading: state.updateRentState == RequestState.loading,
                      enabled: state.rentEnabled,
                      editTap: () => getIt<UpdateUnitCubit>().updateRent(
                          UpdateUnitUtils.updateUnitControllers['rent']!.text));
                },
              ),
              BlocBuilder<UpdateUnitCubit, UpdateUnitState>(
                builder: (context, state) {
                  return UpdateUnitItem(
                      title: S.current.rentDate,
                      readonly: true,
                      isLoading:
                          state.updateRentDataState == RequestState.loading,
                      valueController: UpdateUnitUtils
                          .updateUnitControllers['rentCollectionDate']!,
                      enabled: state.dateEnabled,
                      editTap: () =>
                          getIt<UpdateUnitCubit>().updateRentCollectionDate());
                },
              ),
              UpdateUnitItem(
                  leadingWidget: SizedBox(),
                  title: S.current.unitAddress,
                  valueController:
                      UpdateUnitUtils.updateUnitControllers['address']!),
              BlocBuilder<UpdateUnitCubit, UpdateUnitState>(
                builder: (context, state) {
                  return UpdateUnitItem(
                      title: S.current.unitSpace,
                      enabled: state.spaceEnabled,
                      textInputType: TextInputType.number,
                      valueController:
                          UpdateUnitUtils.updateUnitControllers['space'],
                      isLoading: state.updateSpaceState == RequestState.loading,
                      editTap: () => getIt<UpdateUnitCubit>().updateSpace(
                          UpdateUnitUtils
                              .updateUnitControllers['space']!.text));
                },
              ),
              BlocBuilder<UpdateUnitCubit, UpdateUnitState>(
                builder: (context, state) {
                  return UpdateUnitItem(
                      title: S.current.electricityAccount,
                      valueController: UpdateUnitUtils
                          .updateUnitControllers['electricityAccount'],
                      enabled: state.electricityAccountEnabled,
                      isLoading:
                          state.updateElectricityState == RequestState.loading,
                      editTap: () => getIt<UpdateUnitCubit>()
                          .updateElectricityAccount(UpdateUnitUtils
                              .updateUnitControllers['electricityAccount']!
                              .text));
                },
              ),
              UpdateUnitItem(
                  title: S.current.roomsCount,
                  leadingWidget: BlocBuilder<UpdateUnitCubit, UpdateUnitState>(
                    builder: (context, state) {
                      return ItemWithCount(
                        isLoading:
                            state.updateRoomsState == RequestState.loading,
                        count: state.roomsCount,
                        increasePressed: () => getIt<UpdateUnitCubit>()
                            .updateRoomsCount(state.roomsCount + 1),
                        decreasePressed: () => getIt<UpdateUnitCubit>()
                            .updateRoomsCount(state.roomsCount - 1),
                      );
                    },
                  )),
              UpdateUnitItem(
                  title: S.current.bathroomsCount,
                  leadingWidget: BlocBuilder<UpdateUnitCubit, UpdateUnitState>(
                    builder: (context, state) {
                      return ItemWithCount(
                        isLoading:
                            state.updateBathRoomsState == RequestState.loading,
                        count: state.bathroomsCount,
                        increasePressed: () => getIt<UpdateUnitCubit>()
                            .updateBathroomsCount(state.bathroomsCount + 1),
                        decreasePressed: () => getIt<UpdateUnitCubit>()
                            .updateBathroomsCount(state.bathroomsCount - 1),
                      );
                    },
                  )),
              UpdateUnitItem(
                  title: S.current.conditionersCount,
                  leadingWidget: BlocBuilder<UpdateUnitCubit, UpdateUnitState>(
                    builder: (context, state) {
                      return ItemWithCount(
                        isLoading: state.updateConditionersState ==
                            RequestState.loading,
                        count: state.conditionersCount,
                        increasePressed: () => getIt<UpdateUnitCubit>()
                            .updateConditionersCount(
                                state.conditionersCount + 1),
                        decreasePressed: () => getIt<UpdateUnitCubit>()
                            .updateConditionersCount(
                                state.conditionersCount - 1),
                      );
                    },
                  )),
              UpdateUnitItem(
                  title: S.current.thereIsKitchen,
                  leadingWidget: BlocBuilder<UpdateUnitCubit, UpdateUnitState>(
                    builder: (context, state) {
                      return CupertinoSwitch(
                          value: state.kitchen,
                          onChanged: (value) =>
                              getIt<UpdateUnitCubit>().updateKitchen(value));
                    },
                  )),
              UpdateUnitItem(
                  title: S.current.thereIsLounge,
                  leadingWidget: BlocBuilder<UpdateUnitCubit, UpdateUnitState>(
                    builder: (context, state) {
                      return CupertinoSwitch(
                          value: state.lounge,
                          onChanged: (value) =>
                              getIt<UpdateUnitCubit>().updateLounge(value));
                    },
                  )),
              BlocBuilder<UpdateUnitCubit, UpdateUnitState>(
                builder: (context, state) {
                  return UpdateUnitItem(
                      valueController: TextEditingController(
                          text:
                              '${state.selectedProperty?.name!} , ${state.selectedProperty?.district!} , ${state.selectedProperty?.street!}'),
                      title: S.current.property,
                      isLoading:
                          state.updatePropertyIdState == RequestState.loading,
                      editTap: () =>
                          getIt<UpdateUnitCubit>().openProperties());
                },
              ),
            ].joinWith(Divider()),
          )
        ],
      ),
    );
  }
}

class UpdateUnitItem extends StatelessWidget {
  const UpdateUnitItem(
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
                style:
                    getBoldStyle(fontSize: 14, color: ColorsManager.primary),
              ),
            ));
  }
}

class ItemWithCount extends StatelessWidget {
  final int count;
  final void Function() increasePressed;
  final void Function() decreasePressed;
  final bool isLoading;

  const ItemWithCount(
      {super.key,
      required this.count,
      required this.increasePressed,
      required this.decreasePressed,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isLoading,
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                if (count > 0) decreasePressed();
              },
              icon: Icon(Icons.remove, color: ColorsManager.primary)),
          isLoading
              ? CupertinoActivityIndicator()
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  child: Text(count.toString(),
                      style: getBoldStyle(
                          fontSize: 14, color: ColorsManager.primary)),
                ),
          IconButton(
              onPressed: increasePressed,
              icon: Icon(Icons.add, color: ColorsManager.primary))
        ],
      ),
    );
  }
}

class UpdateUnitHeader extends StatelessWidget {
  const UpdateUnitHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        children: [
          BlocBuilder<UpdateUnitCubit, UpdateUnitState>(
            builder: (context, state) {
              return state.updateImageState != RequestState.loading
                  ? Center(
                      child: CustomCachedImage(
                          image: state.unitImage,
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
              onTap: getIt<UpdateUnitCubit>().updateUnitImage,
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
