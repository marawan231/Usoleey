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
          padding: EdgeInsetsDirectional.only(top: 150.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Text('', textAlign: TextAlign.center),
              Container(
                  height: 200.sp,
                  width: double.infinity,
                  child: BuildPageView(pageController: pageController)),
              // 24.verticalSpace,
              74.verticalSpace,
              MyPageIndicator(boardController: pageController),
            ],
          ),
        ),
        bottomNavigationBar: BuildButtons(
          boardController: pageController,
        ));
  }
}
