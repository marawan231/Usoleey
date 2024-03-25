part of 'create_unit_widgets_imports.dart';

class CreateUnitForm extends StatelessWidget {
  const CreateUnitForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: CreateUnitUtils.formKey,
        child: ListView(
          children: [
            UnitImage(),
            UnitInformation(),
            UnitSpecifications(),
            UnitProperty(),
            CreateUnitButton()
          ].joinWith(32.verticalSpace),
        ));
  }
}

class CreateUnitButton extends StatelessWidget {
  const CreateUnitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: BlocBuilder<CreateUnitCubit, CreateUnitState>(
        builder: (context, state) {
          return AppTextButton(
              buttonText: S.current.save,
              isLoading: state.createUnitState == RequestState.loading,
              onPressed: () => getIt<CreateUnitCubit>().createUnit(
                  formKey: CreateUnitUtils.formKey,
                  createUnitControllers:
                      CreateUnitUtils.createUnitControllers));
        },
      ),
    );
  }
}

class UnitProperty extends StatelessWidget {
  const UnitProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: BlocBuilder<CreateUnitCubit, CreateUnitState>(
          builder: (context, state) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(S.current.property,
                      style: getBoldStyle(
                          fontSize: 14.sp, color: ColorsManager.primary)),
                  32.verticalSpace,
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () => customBottomSheetDialog(
                              body: BlocProvider.value(
                                  value: getIt<CreateUnitCubit>()
                                    ..getMyProperties(),
                                  child: MyProperties())),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 16.h),
                            height: 56.h,
                            alignment: AlignmentDirectional.centerStart,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(color: ColorsManager.grey)),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      state.property != null
                                          ? '${state.property?.name!} , ${state.property?.district!} , ${state.property?.street!}'
                                          : S.current.chooseProperty,
                                      overflow: TextOverflow.ellipsis,
                                      style: getRegularStyle(
                                          fontSize: 16.sp,
                                          color: state.property != null
                                              ? ColorsManager.primary
                                              : ColorsManager.greyMedium)),
                                ),
                                if (state.property != null)
                                  SvgPicture.asset(AssetsManager.editIcon),
                              ],
                            ),
                          ),
                        ),
                      ].joinWith(16.verticalSpace)),
                  if (state.property != null)
                    Column(
                      children: [
                        0.verticalSpace,
                        AppCustomTextFormField(
                            controller: TextEditingController(
                                text: state.property!.district),
                            hintText: S.current.district,
                            readOnly: true,
                            validator: (value) => value!.validateEmpty(),
                            keyboardType: TextInputType.text),
                        AppCustomTextFormField(
                            controller: TextEditingController(
                                text: state.property!.street),
                            hintText: S.current.sreet,
                            readOnly: true,
                            validator: (value) => value!.validateEmpty(),
                            keyboardType: TextInputType.text),
                        AppCustomTextFormField(
                            controller: CreateUnitUtils
                                .createUnitControllers['unitNumber'],
                            hintText: S.current.unitNumber,
                            validator: (value) => value!.validateEmpty(),
                            keyboardType: TextInputType.text),
                        AppCustomTextFormField(
                            controller: TextEditingController(
                                text: state.property!.district),
                            hintText: S.current.district,
                            readOnly: true,
                            validator: (value) => value!.validateEmpty(),
                            keyboardType: TextInputType.text),
                      ].joinWith(8.verticalSpace),
                    ),
                ]);
          },
        ));
  }
}

class MyProperties extends StatefulWidget {
  const MyProperties({super.key});

  @override
  State<MyProperties> createState() => _MyPropertiesState();
}

class _MyPropertiesState extends State<MyProperties> {
  late final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scrollController.onScrollEndsListener(() {
      getIt<CreateUnitCubit>().getMyProperties();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateUnitCubit, CreateUnitState>(
      builder: (context, state) {
        switch (state.getMyPropertiesState) {
          case RequestState.initial:
          case RequestState.loading:
            return CupertinoActivityIndicator();
          case RequestState.success:
            return Column(
              children: [
                BottomSheetHeader(),
                Text(S.current.chooseProperty,
                    style: getBoldStyle(
                        color: ColorsManager.primaryDark, fontSize: 16.sp)),
                24.verticalSpace,
                PropertiesList(
                    scrollController: scrollController,
                    properties: state.properties,
                    selectedProperty: state.property),
                10.verticalSpace,
                AppTextButton(
                    buttonText: S.current.save,
                    onPressed: () {
                      if (state.property != null)
                        Go.back();
                      else
                        showToast(message: 'please choose property');
                    })
              ],
            );
          case RequestState.error:
            return Text("can't fetch my properties");
        }
      },
    );
  }
}

class PropertiesList extends StatelessWidget {
  const PropertiesList(
      {super.key,
      required this.scrollController,
      required this.properties,
      required this.selectedProperty});

  final ScrollController scrollController;
  final List<Property> properties;
  final Property? selectedProperty;

  @override
  Widget build(BuildContext context) {
    final cubit = getIt<CreateUnitCubit>();
    return Expanded(
      child: CustomScrollView(
        controller: scrollController,
        slivers: <Widget>[
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 4.5, crossAxisCount: 1, mainAxisSpacing: 8.h),
            delegate: SliverChildBuilderDelegate((context, index) {
              return InkWell(
                onTap: () => cubit.propertyOnChange(properties[index]),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  height: 56.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: selectedProperty != null &&
                              properties.indexOf(selectedProperty!) == index
                          ? ColorsManager.primaryLighter
                          : null,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: ColorsManager.grey)),
                  child: Row(
                    children: [
                      SvgPicture.asset(AssetsManager.building),
                      8.horizontalSpace,
                      Expanded(
                        child: Text(
                            '${properties[index].name!} , ${properties[index].district!} , ${properties[index].street!}',
                            overflow: TextOverflow.ellipsis,
                            style: getBoldStyle(
                                fontSize: 14.sp,
                                color: ColorsManager.primary,
                                height: 1.5)),
                      ),
                    ],
                  ),
                ),
              );
            },
                childCount: properties.length,
                addAutomaticKeepAlives: true,
                addRepaintBoundaries: true,
                addSemanticIndexes: true),
          ),
          if (properties.length < getIt<CreateUnitCubit>().count)
            PropertiesLoadingWidget()
          else if (selectedProperty == null)
            AddNewPropertyButton()
        ],
      ),
    );
  }
}

class PropertiesLoadingWidget extends StatelessWidget {
  const PropertiesLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(top: 30.h, bottom: 16.h),
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}

class AddNewPropertyButton extends StatelessWidget {
  const AddNewPropertyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: GestureDetector(
          onTap: () {
            customBottomSheetDialog(
                isScrollControlled: true,
                body: SingleChildScrollView(child: CreatePropertyScreen()));
          },
          child: DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(8.r),
              color: ColorsManager.primary,
              dashPattern: const [10, 10, 10, 10],
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Row(
                  children: [
                    16.horizontalSpace,
                    CircleAvatar(
                      minRadius: 25.sp,
                      backgroundColor: ColorsManager.greyLighter,
                      child: Icon(
                        Icons.add_rounded,
                        size: 45,
                        color: ColorsManager.primary,
                      ),
                    ),
                    8.horizontalSpace,
                    Text(
                      S.current.addNewProperty,
                      style: getBoldStyle(
                          fontSize: 14.sp, color: ColorsManager.primaryDark),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
