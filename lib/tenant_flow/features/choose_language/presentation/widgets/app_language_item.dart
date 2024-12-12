import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';

class AppLanguageItem extends StatelessWidget {
  const AppLanguageItem(
      {super.key, required this.language, this.onTap, this.isSelected});
  final String language;
  final bool? isSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 155,
        // height: 75,
        // padding: EdgeInsets.symmetric(horizontal: 61, vertical: 25),
        decoration: BoxDecoration(
          color: isSelected ?? false
              ? ColorsManager.primaryLight
              : ColorsManager.white,
          border: Border.all(
            color: ColorsManager.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(language,
              textAlign: TextAlign.center,
              style:
                  getBoldStyle(fontSize: 16, color: ColorsManager.primaryDark)),
        ),
      ),
    );
  }
}
