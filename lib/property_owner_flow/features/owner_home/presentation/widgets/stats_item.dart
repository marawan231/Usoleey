part of 'owner_home_widgets_imports.dart';

class StatsItem extends StatelessWidget {
  final String icon;
  final String title;
  final int value;
  final RequestState requestState;

  const StatsItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.value,
      required this.requestState});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorsManager.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: ColorsManager.grey)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              ClipPath(
                  clipper: HomeItemCurveClipper(),
                  child: Container(
                    height: 56.sp,
                    decoration: BoxDecoration(
                      color: ColorsManager.primary,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  )),
              35.verticalSpace,
              Text(title,
                  style: getBoldStyle(
                      color: ColorsManager.greyLight, fontSize: 11.sp)),
              10.verticalSpace,
              requestState != RequestState.loading
                  ? Text(value.toString(),
                      style: getBoldStyle(
                          color: ColorsManager.primaryDark, fontSize: 22.sp))
                  : CupertinoActivityIndicator(),
            ],
          ),
          Positioned(
            top: 27.h,
            child: Container(
                width: 49.sp,
                height: 49.sp,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: ColorsManager.primaryLight),
                child: ScaleTransition(
                    scale: AlwaysStoppedAnimation(0.6),
                    child:
                        SvgPicture.asset(icon, height: 20.sp, width: 20.sp))),
          ),
        ],
      ),
    );
  }
}
