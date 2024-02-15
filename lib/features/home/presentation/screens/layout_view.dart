import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_custom_navbar.dart';
import 'package:flutter_complete_project/core/widgets/app_shared_appbar.dart';
import 'package:flutter_complete_project/core/widgets/custom_cached_image.dart';
import 'package:flutter_complete_project/features/bills/presentation/screens/my_bills_view.dart';
import 'package:flutter_complete_project/features/home/presentation/screens/home_screen.dart';
import 'package:flutter_complete_project/features/login/logic/cubit/auth_cubit.dart';
import 'package:flutter_complete_project/features/more/presentation/screens/more_view.dart';
import 'package:flutter_complete_project/features/tickets/presentation/screens/tickets_view.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final List<Widget> layoutScreens = [
  //   const TransactionHistoryView(),
  const HomeScreen(),
  const MyBillsView(),

  const TicketsView(),
  const MoreView(),

  // const ProfileView(),
];
List<String> layoutTitles = [
  S.current.main,
  S.current.bills,
  S.current.tickets,
  S.current.more,
];

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // extendBody: true,
      bottomNavigationBar: CustomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedTab = index;
          });
        },
      ),
      appBar: selectedTab == 0
          ? _buildAppBar()
          : selectedTab == 2
              ? SharedAppBar(
                  title: layoutTitles[2],
                  leading: IconButton(
                    icon: Icon(
                      Icons.add,
                      size: 24.sp,
                    ),
                    onPressed: () {},
                  ),
                )
              : selectedTab == 3
                  ? AppBar(
                      backgroundColor: ColorsManager.primary,
                    )
                  : SharedAppBar(
                      title: layoutTitles[selectedTab],
                    ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return layoutScreens[selectedTab];
  }

  _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(65),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(32.r),
            bottomRight: Radius.circular(32.r),
          ),
        ),
        child: _buildTitle(),
        // actions: _buildActions(),
        // leading: _buildLeading(),
      ),
    );
  }

  _buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(top: 50.sp, start: 24.sp),
          child: _buildLeading(),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(top: 30.sp, end: 24.sp),
          child: _buildActions(),
        ),
      ],
    );
  }

  Widget _buildLeading() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40.sp,
          height: 40.sp,
          decoration: BoxDecoration(
            color: ColorsManager.black,
            shape: BoxShape.circle,
          ),
        ),
        8.horizontalSpace,
        Column(
          // // mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'مرحباً ${getIt<AuthCubit>().userModel?.firstNameEn ?? ''}',
              style: getBoldStyle(
                fontSize: 16.sp,
                color: ColorsManager.black,
              ),
            ),
            4.verticalSpace,
            Text(getIt<AuthCubit>().userModel?.role ?? '',
                style: getBoldStyle(
                  fontSize: 11.sp,
                  color: ColorsManager.greyLight,
                )),
          ],
        ),
      ],
    );
  }

  Widget _buildActions() {
    return Container(
      width: 37.sp,
      height: 37.sp,
      decoration: BoxDecoration(
        color: ColorsManager.primaryLighter,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: InkWell(
        onTap: () {
          Go.back();
        },
        // onTap: () => Go.toNamed(NamedRoutes.notifications),
        child: Icon(
          Icons.notifications_none_outlined,
          color: ColorsManager.primary,
          size: 24.sp,
        ),
      ),
    );
  }
}
