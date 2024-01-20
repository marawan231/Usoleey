part of 'on_boarding_views_imports.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.only(bottom: 16.h),
        child: Column(
          children: [
            Text('',
                textAlign: TextAlign.center),
            Expanded(child: BuildPageView(pageController: pageController)),
            MyPageIndicator(boardController: pageController),
          ],
        ),
      ),
      bottomNavigationBar: const BuildButtons(),
    );
  }
}
