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
          expansionFactor: 2.w,
          spacing: 2.w,
          radius: 2.r,
          dotWidth: 6.w,
          dotHeight: 4.h,
          dotColor: ColorsManager.primary.withOpacity(.5),
          activeDotColor: ColorsManager.primary),
    );
  }
}
