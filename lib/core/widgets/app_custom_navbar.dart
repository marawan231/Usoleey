import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

int selectedTab = 0;

class CustomNavigationBar extends StatefulWidget {
  final void Function(int)? onTap;

  const CustomNavigationBar({
    super.key,
    this.onTap,
  });

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: ,
      decoration: BoxDecoration(
        //shadow
        // boxShadow: [
        //   BoxShadow(
        //     color: ColorsManager.grey.withOpacity(.1),
        //     blurRadius: 10,
        //     offset: const Offset(0, 0),
        //   ),
        // ],
        // color: ColorsManager.red,
        border: Border(
          top:
              BorderSide(color: ColorsManager.grey.withOpacity(.18), width: .1),
        ),
      ),
      child: ClipRRect(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // showSelectedLabels: true,
          // elevation: 10,

          showUnselectedLabels: true,
          currentIndex: selectedTab,
          selectedItemColor: ColorsManager.primary,
          unselectedItemColor: ColorsManager.greyLight,

          onTap: widget.onTap,
          items: _buildNavigationBarItems(),
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> _buildNavigationBarItems() {
    return [
      _buildNavigationBarItem(AssetsManager.navbarHome, S.current.main, 0),
      _buildNavigationBarItem(AssetsManager.navbarFwateer, S.current.bills, 1),
      _buildNavigationBarItem(
          AssetsManager.navbarTickets, S.current.tickets, 2),
      _buildNavigationBarItem(AssetsManager.navbarMore, S.current.more, 3),
    ];
  }

  BottomNavigationBarItem _buildNavigationBarItem(
    String assetName,
    String label,
    int index,
  ) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(bottom: 6.w),
        child: SvgPicture.asset(assetName,
            width: 20.h,
            height: 20.h,
            // ignore: deprecated_member_use
            color: selectedTab == index
                ? ColorsManager.primary
                : ColorsManager.greyLight),
      ),
      label: label,
    );
  }
}
