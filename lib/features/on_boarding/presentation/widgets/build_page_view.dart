part of 'on_boarding_widgets_imports.dart';

class BuildPageView extends StatelessWidget {
  final PageController pageController;

  const BuildPageView({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: pageController,
        clipBehavior: Clip.none,
        itemCount: onBoardingItems.length,
        itemBuilder: (context, index) =>
            SvgPicture.asset(onBoardingItems[index]['image']!));
  }
}
