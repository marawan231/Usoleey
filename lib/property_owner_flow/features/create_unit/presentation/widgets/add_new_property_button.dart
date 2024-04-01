part of 'create_unit_widgets_imports.dart';

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
