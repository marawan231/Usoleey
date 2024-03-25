part of 'create_unit_widgets_imports.dart';

class UnitInformation extends StatelessWidget {
  const UnitInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(S.current.informationUnit,
              style:
                  getBoldStyle(fontSize: 14.sp, color: ColorsManager.primary)),
          32.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppCustomTextFormField(
                    controller: CreateUnitUtils.createUnitControllers['name'],
                    hintText: S.current.unitName,
                    validator: (value) => value!.validateEmpty(),
                    keyboardType: TextInputType.text),
                AppCustomTextFormField(
                    controller: CreateUnitUtils.createUnitControllers['rent'],
                    hintText: S.current.unitRent,
                    validator: (value) => value!.validateEmpty(),
                    keyboardType: TextInputType.number),
                AppCustomTextFormField(
                    readOnly: true,
                    controller: CreateUnitUtils
                        .createUnitControllers['rentCollectionDate'],
                    hintText: S.current.unitDate,
                    validator: (value) => value!.validateEmpty(),
                    onTap: () => customShowDatePicker(
                        controller: CreateUnitUtils
                            .createUnitControllers['rentCollectionDate']!),
                    keyboardType: TextInputType.number),
                AppCustomTextFormField(
                    controller: CreateUnitUtils
                        .createUnitControllers['electricityAccount'],
                    hintText: S.current.electricityAccount,
                    validator: (value) => value!.validateEmpty(),
                    keyboardType: TextInputType.number),
                AppCustomTextFormField(
                    controller:
                        CreateUnitUtils.createUnitControllers['waterAccount'],
                    hintText: S.current.waterAccount,
                    validator: (value) => value!.validateEmpty(),
                    keyboardType: TextInputType.number),
                AppCustomTextFormField(
                    controller:
                        CreateUnitUtils.createUnitControllers['address'],
                    hintText: S.current.address,
                    validator: (value) => value!.validateEmpty(),
                    keyboardType: TextInputType.text),
              ].joinWith(16.verticalSpace),
            ),
          )
        ],
      ),
    );
  }
}
