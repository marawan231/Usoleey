import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:lottie/lottie.dart';

class EmptyLottie extends StatelessWidget {
  const EmptyLottie(
      {super.key,
      required this.lottiePath,
      required this.title,
      required this.subTitle,
      this.buttonText,
      this.onPressed,
      required this.isButtonVisible,
      this.padding});
  final String lottiePath;
  final String title;
  final String subTitle;
  final String? buttonText;
  final void Function()? onPressed;
  final bool isButtonVisible;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 126,
            height: 126,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: ColorsManager.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Container(
                width: 98,
                height: 98,
                padding: EdgeInsets.all(padding ?? 16),
                decoration: BoxDecoration(
                  color: ColorsManager.primaryLighter,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Lottie.asset(lottiePath, width: 48, height: 48)),
          ),
          40.verticalSpace,
          Text(
            title,
            style: getBoldStyle(fontSize: 16, color: ColorsManager.primary),
          ),
          8.verticalSpace,
          Text(subTitle,
              style: getRegularStyle(
                  fontSize: 14, color: ColorsManager.greyLight)),
          40.verticalSpace,
          isButtonVisible
              ? GestureDetector(
                  onTap: onPressed,
                  child: Container(
                    width: 125,
                    height: 35,
                    decoration: BoxDecoration(
                      color: ColorsManager.primary,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: ColorsManager.white,
                          size: 16,
                        ),
                        6.horizontalSpace,
                        Text(
                          buttonText ?? '',
                          style: getBoldStyle(
                              fontSize: 12, color: ColorsManager.white),
                        ),
                      ],
                    ),
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
