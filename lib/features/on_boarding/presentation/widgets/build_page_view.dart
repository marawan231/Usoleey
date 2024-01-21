part of 'on_boarding_widgets_imports.dart';

class BuildPageView extends StatelessWidget {
  final PageController pageController;

  const BuildPageView({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        onPageChanged: (value) {
          RouterGenerator.onboardingCubit.reachedLastOnboardingScreen(value);
        },
        controller: pageController,
        clipBehavior: Clip.none,
        itemCount: onBoardingItems.length,
        itemBuilder: (context, index) => Stack(
              fit: StackFit.expand,
              clipBehavior: Clip.none,
              children: [
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0.sp,
                    top: 0,
                    child: SvgPicture.asset(AssetsManager.backgroundShape,
                        fit: BoxFit.fill)),
                SvgPicture.asset(onBoardingItems[index]['image']!),

                //indicator

                //title
                Positioned(
                    top: 215.sp,
                    left: 37.sp,
                    right: 37.sp,
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(top: 100.sp),
                      child: Text(onBoardingItems[index]['title']!,
                          textAlign: TextAlign.center,
                          style: getBoldStyle(
                              fontSize: 24.sp,
                              color: ColorsManager.primaryDark)),
                    )),
                //subtitle
                Positioned(
                    top: 290.sp,
                    left: 34.sp,
                    right: 34.sp,
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(top: 100.sp),
                      child: Text(onBoardingItems[index]['description']!,
                          textAlign: TextAlign.center,
                          style: getRegularStyle(
                              fontSize: 14.sp, color: ColorsManager.greyLight)),
                    )),
              ],
            ));
  }
}
