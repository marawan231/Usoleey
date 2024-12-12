part of 'create_property_widgets_imports.dart';

class PropertyImage extends StatelessWidget {
  const PropertyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreatePropertyCubit, CreatePropertyState>(
      builder: (context, state) {
        return state.propertyImage != null
            ? Stack(
                children: [
                  SizedBox(
                      height: 250,
                      width: double.infinity,
                      child:
                          Image.file(state.propertyImage!, fit: BoxFit.fill)),
                  PositionedDirectional(
                      top: 10,
                      end: 10,
                      child: GestureDetector(
                          onTap:
                              getIt<CreatePropertyCubit>().clearPropertyImage,
                          child: SvgPicture.asset(AssetsManager.close)))
                ],
              )
            : Container(
                color: ColorsManager.grey,
                height: 250,
                width: double.infinity,
                child: InkWell(
                    onTap: getIt<CreatePropertyCubit>().uploadPropertyImage,
                    child: Center(
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundColor: ColorsManager.greyLighter,
                        child: Icon(Icons.camera_alt_outlined, size: 40),
                      ),
                    )));
      },
    );
  }
}
