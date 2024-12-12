import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';

class CustomDragHandler extends StatelessWidget {
  const CustomDragHandler({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildDragHandle();
  }

  _buildDragHandle() {
    return Container(
      width: 36,
      height: 5,
      decoration: BoxDecoration(
        color: ColorsManager.grey,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
