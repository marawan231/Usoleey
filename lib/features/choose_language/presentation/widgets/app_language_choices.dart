import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/constants/values.dart';
import 'package:flutter_complete_project/core/navigator/route_generator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/features/choose_language/logic/cubit/choose_language_cubit.dart';
import 'package:flutter_complete_project/features/choose_language/presentation/widgets/app_language_item.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLanguageChoices extends StatelessWidget {
  const AppLanguageChoices({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChooseLanguageCubit, ChooseLanguageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 75.sp,
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return AppLanguageItem(
                      language: appLanguages[index],
                      isSelected: state.whenOrNull(
                        changeSelectedLanguageLoaded: () =>
                            appLanguages[index] ==
                            RouterGenerator
                                .chooseLanguageCubit.selectedLanguage,
                      ),
                      onTap: () {
                        RouterGenerator.chooseLanguageCubit
                            .changeLanguage(appLanguages[index]);
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return 16.horizontalSpace;
                  },
                  itemCount: appLanguages.length),
            ),
            50.verticalSpace,
            Visibility(
              visible:
                  RouterGenerator.chooseLanguageCubit.selectedLanguage != null,
              child: AppTextButton(
                buttonText: S.current.continueToNext,
              ),
            ),
          ],
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