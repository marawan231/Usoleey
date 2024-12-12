part of 'my_real_estate_widgets_imports.dart';

class ItemBackground extends StatelessWidget {
  const ItemBackground(
      {super.key,
      required this.child,
      this.curveColor,
      required this.isProperty});

  final Widget child;
  final Color? curveColor;
  final bool isProperty;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorsManager.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: ColorsManager.grey)),
      child: Stack(
        children: [
          Column(
            children: [
              ClipPath(
                  clipper: CurveClipper(),
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                      color: curveColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  )),
              45.verticalSpace,
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16), child: child),
            ],
          ),
          Positioned(
            top: 42,
            right: 120,
            child: Container(
                width: 85,
                height: 85,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: curveColor != ColorsManager.primary
                      ? ColorsManager.white
                      : ColorsManager.primaryLight,
                ),
                child: ScaleTransition(
                  scale: AlwaysStoppedAnimation(0.6),
                  child: SvgPicture.asset(
                    isProperty
                        ? AssetsManager.property
                        : AssetsManager.navbarHome,
                    height: 45,
                    width: 45,
                    // ignore: deprecated_member_use
                    color: curveColor,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
