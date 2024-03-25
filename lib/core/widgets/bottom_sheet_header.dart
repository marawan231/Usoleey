
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../tenant_flow/features/tickets/presentation/widgets/custom_drag_handler.dart';
import '../navigator/navigator.dart';
import '../res/assets_manager.dart';

class BottomSheetHeader extends StatelessWidget {
  const BottomSheetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 37.sp,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomDragHandler(),
          PositionedDirectional(
            top: 2.sp,
            end: 0,
            child: GestureDetector(
              onTap: Go.back,
              child: SvgPicture.asset(AssetsManager.close),
            ),
          ),
        ],
      ),
    );
  }
}