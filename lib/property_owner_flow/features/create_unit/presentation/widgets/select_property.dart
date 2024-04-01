part of 'create_unit_widgets_imports.dart';

class SelectProperty extends StatelessWidget {
  final PropertyModel? property;

  const SelectProperty({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => customBottomSheetDialog(
          body: BlocProvider.value(
              value: getIt<CreateUnitCubit>()..getMyProperties(),
              child: BlocBuilder<CreateUnitCubit, CreateUnitState>(
                builder: (context, state) {
                  return MyProperties(
                      scrollingCallback:
                          getIt<CreateUnitCubit>().getMyProperties,
                      propertyOnChange:
                          getIt<CreateUnitCubit>().propertyOnChange,
                      requestState: state.getMyPropertiesState,
                      properties: state.properties,
                      propertyModel: state.property);
                },
              ))),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
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
                  property != null
                      ? '${property?.name} , ${property?.district} , ${property?.street}'
                      : S.current.chooseProperty,
                  overflow: TextOverflow.ellipsis,
                  style: getRegularStyle(
                      fontSize: 16.sp,
                      color: property != null
                          ? ColorsManager.primary
                          : ColorsManager.greyMedium)),
            ),
            if (property != null) SvgPicture.asset(AssetsManager.editIcon),
          ],
        ),
      ),
    );
  }
}
