part of 'on_boarding_widgets_imports.dart';

class BuildButtons extends StatelessWidget {
  const BuildButtons({super.key, required this.boardController});
  final PageController boardController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardingCubit, OnboardingState>(
        // bloc: RouterGenerator.onboardingCubit,
        listener: (context, state) {},
        // buildWhen: (previous, current) =>
        //     current == OnboardingState.reachedLastOnboardingScreenLoaded(),
        builder: (context, state) {
          return RouterGenerator.onboardingCubit.currentIndex ==
                  onBoardingItems.length - 1
              ? _buildLastButton()
              : _buildRegularButtons();
        });
  }

  _buildLastButton() {
    return Padding(
      padding:
          EdgeInsetsDirectional.only(bottom: 50.sp, start: 24.sp, end: 24.sp),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppTextButton(
              onPressed: () => Go.toNamed(NamedRoutes.login),
              buttonText: S.current.login),
          // 24.verticalSpace,
          AppTextButton(
              backgroundColor: ColorsManager.backgroundColor,
              textStyle: getBoldStyle(
                  color: ColorsManager.primaryDark, fontSize: 16.sp),
              onPressed: () => Go.toNamed(NamedRoutes.login),
              buttonText: S.current.skip),
        ],
      ),
    );
  }

  _buildRegularButtons() {
    return Padding(
      padding:
          EdgeInsetsDirectional.only(bottom: 100.sp, start: 24.sp, end: 24.sp),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 8,
            child: AppTextButton(
                onPressed: () => boardController.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn),
                buttonText: S.current.next),
          ),
          24.horizontalSpace,
          Expanded(
            flex: 4,
            child: AppTextButton(
                backgroundColor: ColorsManager.transparent,
                textStyle: getBoldStyle(
                    color: ColorsManager.primaryDark, fontSize: 16.sp),
                onPressed: () => Go.offAllNamed(NamedRoutes.login),
                buttonText: S.current.skip),
          ),
        ],
      ),
    );
  }
}
