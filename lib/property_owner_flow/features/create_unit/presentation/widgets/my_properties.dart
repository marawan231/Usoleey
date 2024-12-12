part of 'create_unit_widgets_imports.dart';

class MyProperties extends StatefulWidget {
  final PropertyModel? propertyModel;
  final void Function(PropertyModel?)? propertyOnChange;
  final RequestState requestState;
  final List<PropertyModel> properties;
  final void Function() scrollingCallback;
  final void Function()? saveProperty;

  const MyProperties(
      {super.key,
      this.propertyModel,
      this.propertyOnChange,
      required this.requestState,
      required this.properties,
      required this.scrollingCallback,
      this.saveProperty});

  @override
  State<MyProperties> createState() => _MyPropertiesState();
}

class _MyPropertiesState extends State<MyProperties> {
  late final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scrollController.onScrollEndsListener(() => widget.scrollingCallback());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseRemoteWidget(
        requestState: widget.requestState,
        successWidget: Column(
          children: [
            BottomSheetHeader(),
            Text(S.current.chooseProperty,
                style: getBoldStyle(
                    color: ColorsManager.primaryDark, fontSize: 16)),
            24.verticalSpace,
            PropertiesList(
                propertyOnChange: widget.propertyOnChange,
                scrollController: scrollController,
                properties: widget.properties,
                selectedProperty: widget.propertyModel),
            10.verticalSpace,
            AppTextButton(
                buttonText: S.current.save,
                onPressed: () {
                  if (widget.propertyModel != null) {
                    widget.saveProperty ?? ();
                    Go.back();
                  } else {
                    showToast(message: 'please choose property');
                  }
                })
          ],
        ));
  }
}
