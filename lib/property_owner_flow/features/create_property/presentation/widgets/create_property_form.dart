part of 'create_property_widgets_imports.dart';

class CreatePropertyForm extends StatefulWidget {
  const CreatePropertyForm({super.key});

  @override
  State<CreatePropertyForm> createState() => _CreatePropertyFormState();
}

class _CreatePropertyFormState extends State<CreatePropertyForm> {
  @override
  void dispose() {
    CreatePropertyUtils.disposeControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: CreatePropertyUtils.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Text(S.current.addBuilding,
                  style: getBoldStyle(
                      color: ColorsManager.primary, fontSize: 16.sp))),
          8.verticalSpace,
          AppCustomTextFormField(
              controller: CreatePropertyUtils.createPropertyControllers['name'],
              hintText: S.current.name,
              validator: (value) => value!.validateEmpty(),
              keyboardType: TextInputType.text),
          AppCustomTextFormField(
              controller: CreatePropertyUtils
                  .createPropertyControllers['instrumentNumber'],
              hintText: S.current.instrumentNumber,
              validator: (value) => value!.validateEmpty(),
              keyboardType: TextInputType.number),
          AppCustomTextFormField(
              controller:
                  CreatePropertyUtils.createPropertyControllers['unitsCount'],
              hintText: S.current.unitsCount,
              validator: (value) => value!.validateEmpty(),
              keyboardType: TextInputType.number),
          8.verticalSpace,
          Text(S.current.unitAddress,
              style:
                  getBoldStyle(color: ColorsManager.primary, fontSize: 16.sp)),
          8.verticalSpace,
          AppCustomTextFormField(
              controller: CreatePropertyUtils.createPropertyControllers['city'],
              hintText: S.current.city,
              validator: (value) => value!.validateEmpty(),
              keyboardType: TextInputType.text),
          AppCustomTextFormField(
              controller:
                  CreatePropertyUtils.createPropertyControllers['district'],
              hintText: S.current.district,
              validator: (value) => value!.validateEmpty(),
              keyboardType: TextInputType.text),
          AppCustomTextFormField(
              controller:
                  CreatePropertyUtils.createPropertyControllers['street'],
              hintText: S.current.sreet,
              validator: (value) => value!.validateEmpty(),
              keyboardType: TextInputType.text),
          AppCustomTextFormField(
              controller:
                  CreatePropertyUtils.createPropertyControllers['address'],
              hintText: S.current.address,
              validator: (value) => value!.validateEmpty(),
              keyboardType: TextInputType.text),
          AppCustomTextFormField(
              controller:
                  CreatePropertyUtils.createPropertyControllers['unitNumber'],
              hintText: S.current.unitNumber,
              validator: (value) => value!.validateEmpty(),
              keyboardType: TextInputType.number),
          AppCustomTextFormField(
              controller:
                  CreatePropertyUtils.createPropertyControllers['postalCode'],
              hintText: S.current.postalCode,
              validator: (value) => value!.validateEmpty(),
              textInputAction: TextInputAction.done,
              onFieldSubmitted: (value) {
                getIt<CreatePropertyCubit>().createProperty(
                    formKey: CreatePropertyUtils.formKey,
                    createPropertyControllers:
                        CreatePropertyUtils.createPropertyControllers);
              },
              keyboardType: TextInputType.number),
          16.verticalSpace,
          BlocBuilder<CreatePropertyCubit, CreatePropertyState>(
            builder: (context, state) {
              return AppTextButton(
                  buttonText: S.current.save,
                  isLoading: state.createPropertyState == RequestState.loading,
                  onPressed: () {
                    getIt<CreatePropertyCubit>().createProperty(
                        formKey: CreatePropertyUtils.formKey,
                        createPropertyControllers:
                            CreatePropertyUtils.createPropertyControllers);
                  });
            },
          ),
          8.verticalSpace
        ].joinWith(8.verticalSpace),
      ),
    );
  }
}
