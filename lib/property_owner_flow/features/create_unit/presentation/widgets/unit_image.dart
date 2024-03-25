part of'create_unit_widgets_imports.dart';

class UnitImage extends StatelessWidget {
  const UnitImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateUnitCubit, CreateUnitState>(
      builder: (context, state) {
        return state.unitImage != null
            ? Stack(
          children: [
            SizedBox(
                height: 250.h,
                width: double.infinity,
                child: Image.file(state.unitImage!, fit: BoxFit.fill)),
            PositionedDirectional(
              top: 10.sp,
              end: 10.sp,
              child: GestureDetector(
                onTap: getIt<CreateUnitCubit>().clearUnitImage,
                child: SvgPicture.asset(AssetsManager.close),
              ),
            ),
          ],
        )
            : Container(
          color: ColorsManager.grey,
          height: 250.h,
          width: double.infinity,
          child: InkWell(
            onTap: getIt<CreateUnitCubit>().uploadUnitImage,
            child: Center(
              child: CircleAvatar(
                maxRadius: 40.r,
                backgroundColor: ColorsManager.greyLighter,
                child: Icon(Icons.camera_alt_outlined, size: 40),
              ),
            ),
          ),
        );
      },
    );
  }
}
