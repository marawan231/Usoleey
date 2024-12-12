import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/tenant_flow/features/more/presentation/screens/more_view.dart';
import 'package:flutter_svg/svg.dart';

class HomeUnitItemBackGround extends StatelessWidget {
  const HomeUnitItemBackGround({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: ColorsManager.grey),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              ClipPath(
                  clipper: CurveClipper(),
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                      color: ColorsManager.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  )),
              45.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: child,
              ),
            ],
          ),
          _buildHomeIcon(),
        ],
      ),
    );
  }

  _buildHomeIcon() {
    return Positioned(
      //centre
      top: 42,
      // bottom: 0,
      // left: 0,
      right: 120,
      child: Container(
          width: 85,
          height: 85,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorsManager.primaryLight,
            // borderRadius: BorderRadius.circular(8.r),
          ),
          child: ScaleTransition(
            scale: AlwaysStoppedAnimation(0.6),
            child: SvgPicture.asset(
              AssetsManager.navbarHome,
              height: 45,
              width: 45,
            ),
          )),
    );
  }
}
