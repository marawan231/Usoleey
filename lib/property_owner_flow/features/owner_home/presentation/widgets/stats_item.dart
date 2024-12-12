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
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: ColorsManager.grey)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              ClipPath(
                  clipper: HomeItemCurveClipper(),
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: ColorsManager.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  )),
              35.verticalSpace,
              Text(title,
                  style: getBoldStyle(
                      color: ColorsManager.greyLight, fontSize: 11)),
              10.verticalSpace,
              requestState != RequestState.loading
                  ? Text(value.toString(),
                      style: getBoldStyle(
                          color: ColorsManager.primaryDark, fontSize: 22))
                  : CupertinoActivityIndicator(),
            ],
          ),
          Positioned(
            top: 27,
            child: Container(
                width: 49,
                height: 49,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: ColorsManager.primaryLight),
                child: ScaleTransition(
                    scale: AlwaysStoppedAnimation(0.6),
                    child: SvgPicture.asset(icon, height: 20, width: 20))),
          ),
        ],
      ),
    );
  }
}
