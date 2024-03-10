import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/tenant_flow/features/choose_language/presentation/widgets/app_language_choices.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseAppLanguageView extends StatelessWidget {
  const ChooseAppLanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorsManager.backgroundColor,
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 24.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.current.chooseAppLanguage,
              style: getBoldStyle(
                  fontSize: 24.sp, color: ColorsManager.primaryDark),
            ),
            24.verticalSpace,
            AppLanguageChoices(),
          ],
        ),
      ),
    );
  }
}
