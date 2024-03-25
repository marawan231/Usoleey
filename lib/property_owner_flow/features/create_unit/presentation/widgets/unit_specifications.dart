part of 'create_unit_widgets_imports.dart';

class UnitSpecifications extends StatelessWidget {
  const UnitSpecifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(S.current.unitSpecifications,
                  style: getBoldStyle(
                      fontSize: 14.sp, color: ColorsManager.primary)),
              4.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppCustomTextFormField(
                        controller:
                            CreateUnitUtils.createUnitControllers['space'],
                        hintText: S.current.unitSpace,
                        validator: (value) => value!.validateEmpty(),
                        keyboardType: TextInputType.number),
                    AppCustomTextFormField(
                        controller:
                            CreateUnitUtils.createUnitControllers['rooms'],
                        hintText: S.current.roomsCount,
                        validator: (value) => value!.validateEmpty(),
                        keyboardType: TextInputType.number),
                    AppCustomTextFormField(
                        controller:
                            CreateUnitUtils.createUnitControllers['bathrooms'],
                        hintText: S.current.bathroomsCount,
                        validator: (value) => value!.validateEmpty(),
                        keyboardType: TextInputType.number),
                    AppCustomTextFormField(
                        controller: CreateUnitUtils
                            .createUnitControllers['conditioners'],
                        hintText: S.current.conditionersCount,
                        validator: (value) => value!.validateEmpty(),
                        keyboardType: TextInputType.number),
                    BlocBuilder<CreateUnitCubit, CreateUnitState>(
                      builder: (context, state) {
                        return Switcher(
                            title: S.current.thereIsLoungue,
                            value: state.lounge,
                            onChanged: getIt<CreateUnitCubit>().loungeOnChage);
                      },
                    ),
                    BlocBuilder<CreateUnitCubit, CreateUnitState>(
                      builder: (context, state) {
                        return Switcher(
                            title: S.current.thereIsKitchecn,
                            value: state.kitchen,
                            onChanged: getIt<CreateUnitCubit>().kitchenOnChage);
                      },
                    ),
                  ].joinWith(16.verticalSpace),
                ),
              )
            ].joinWith(16.verticalSpace)));
  }
}
