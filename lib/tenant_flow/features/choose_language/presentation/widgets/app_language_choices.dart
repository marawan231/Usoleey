import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/constants/values.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/extensions/seperator_helper.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/navigator/route_generator.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
import 'package:flutter_complete_project/tenant_flow/features/choose_language/logic/cubit/choose_language_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/choose_language/presentation/widgets/app_language_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLanguageChoices extends StatelessWidget {
  const AppLanguageChoices({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChooseLanguageCubit, ChooseLanguageState>(
      builder: (context, state) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 75.sp,
                child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      AppLanguageItem(
                        language: 'عربي',
                        isSelected: state.language!.languageCode == 'ar',
                        onTap: () =>
                            getIt<ChooseLanguageCubit>().changeLanguage('ar'),
                      ),
                      AppLanguageItem(
                        language: 'English',
                        isSelected: state.language!.languageCode == 'en',
                        onTap: () =>
                            getIt<ChooseLanguageCubit>().changeLanguage('en'),
                      ),
                    ].joinWith(10.horizontalSpace)),
              ),
              50.verticalSpace,
              Visibility(
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                maintainInteractivity: true,
                maintainSemantics: true,
                visible: state.language != null,
                child: AppTextButton(
                  buttonText: S.current.continueToNext,
                  onPressed: () => Go.offAllNamed(NamedRoutes.onBoarding),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
/*
Row(
        children: List.generate(
      2,
      (index) => Expanded(
          child: AppLanguageItem(
        language: appLanguages[index],
      )),
    )); */
