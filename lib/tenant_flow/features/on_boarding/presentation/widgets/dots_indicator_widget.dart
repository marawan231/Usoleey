part of 'on_boarding_widgets_imports.dart';

class MyPageIndicator extends StatelessWidget {
  const MyPageIndicator(
      {super.key, required this.boardController, this.lenght});
  final PageController boardController;
  final int? lenght;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: boardController,
      count: lenght ?? onBoardingItems.length,
      effect: ExpandingDotsEffect(
          expansionFactor: 4.w,
          spacing: 7.sp,
          radius: 50.r,
          dotWidth: 6.sp,
          dotHeight: 6.sp,
          dotColor: ColorsManager.grey,
          activeDotColor: ColorsManager.primary),
    );
  }
}
