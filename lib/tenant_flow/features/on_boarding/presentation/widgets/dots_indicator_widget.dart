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
          expansionFactor: 4,
          spacing: 7,
          radius: 50,
          dotWidth: 6,
          dotHeight: 6,
          dotColor: ColorsManager.grey,
          activeDotColor: ColorsManager.primary),
    );
  }
}
