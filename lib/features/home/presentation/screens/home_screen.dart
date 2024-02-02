
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/features/home/presentation/widgets/home_custom_button.dart';
import 'package:flutter_complete_project/features/more/presentation/screens/more_view.dart';
import 'package:flutter_complete_project/features/on_boarding/presentation/widgets/on_boarding_widgets_imports.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // controller
  PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  _buildBody() {
    return Column(
      children: [
        _buildProperties(),
        _buildIndicators(),
      ],
    );
  }

  _buildProperties() {
    return SizedBox(
      height: 330.sp,
      child: PageView.builder(
        controller: _pageController,
        itemCount: 4,
        itemBuilder: (context, index) => _buildPropertyItem(),
      ),
    );
  }

  _buildIndicators() {
    return MyPageIndicator(
      boardController: _pageController,
      lenght: 4,
    );
  }

  _buildPropertyItem() {
    return Container(
      // color: Colors.red,

      margin: EdgeInsetsDirectional.only(
          start: 24.sp, end: 24.sp, top: 16.sp, bottom: 16.sp),
      height: 310.sp,
      width: 300.sp,
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: ColorsManager.grey),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              ClipPath(
                  clipper: CurveClipper(),
                  child: Container(
                    height: 90.sp,
                    decoration: BoxDecoration(
                      color: ColorsManager.primary,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  )),
              45.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Column(
                  children: [
                    _buildAddress(),
                    4.verticalSpace,
                    _buildRentValue(),
                    8.verticalSpace,
                    _buildRentTime(),
                    16.horizontalSpace,
                    HomeCustomButton(),
                  ],
                ),
              ),
            ],
          ),
          _buildHomeIcon(),
        ],
      ),
    );
  }

  _buildAddress() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.sp),
      child: Text(
        'شقة ٤، عمارة ١٢٠، حي الخالدية، شارع عمر بن الخطاب',
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: getBoldStyle(
            fontSize: 14.sp, color: ColorsManager.primaryDark, height: 1.3.sp),
      ),
    );
  }

  _buildRentValue() {
    return Text(
      '١٥٠٠ ريال/شهري',
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: getBoldStyle(
        fontSize: 11.sp,
        color: ColorsManager.greyLight,
      ),
    );
  }

  _buildRentTime() {
    return Container(
      // height: 24.sp,
      padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 4.sp),
      margin: EdgeInsetsDirectional.symmetric(horizontal: 16.sp),
      // width: double.infinity,
      decoration: BoxDecoration(
        color: ColorsManager.green,
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.calendar_today_outlined,
            color: ColorsManager.greenDark,
            size: 16.sp,
          ),
          4.horizontalSpace,
          Text(
            'موعد دفع الإيجار القادم: ١٣ فبراير، ٢٠٢٣',
            style:
                getBoldStyle(fontSize: 12.sp, color: ColorsManager.greenDark),
          ),
        ],
      ),
    );
  }

  _buildHomeIcon() {
    return Positioned(
      //centre
      top: 42.sp,
      // bottom: 0,
      // left: 0,
      right: 120.sp,
      child: Container(
          width: 85.sp,
          height: 85.sp,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorsManager.primaryLight,
            // borderRadius: BorderRadius.circular(8.r),
          ),
          child: ScaleTransition(
            scale: AlwaysStoppedAnimation(0.6),
            child: SvgPicture.asset(
              AssetsManager.navbarHome,
              height: 45.sp,
              width: 45.sp,
            ),
          )),
    );
  }
}
