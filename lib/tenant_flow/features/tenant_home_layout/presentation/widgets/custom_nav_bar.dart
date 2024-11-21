part of 'tenant_home_layout_widgets_imports.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  List<NavigationItem> get navigationItems => [
        NavigationItem(
            icon: AssetsManager.navbarHome, title: S.of(context).main),
        NavigationItem(
            icon: AssetsManager.navbarFwateer, title: S.of(context).bills),
        NavigationItem(
            icon: AssetsManager.navbarTickets, title: S.of(context).myTickets),
        NavigationItem(
            icon: AssetsManager.navbarMore, title: S.of(context).more)
      ];

  @override
  Widget build(BuildContext context) {
    final selectedIndex =
        context.select((TenantHomeLayoutCubit cubit) => cubit.state.index);
    return Container(
      height: 85.sp,
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
                  color: ColorsManager.grey.withOpacity(.18), width: .1))),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        selectedLabelStyle:
            getBoldStyle(fontSize: 12.sp, color: ColorsManager.primary),
        unselectedLabelStyle:
            getBoldStyle(fontSize: 12.sp, color: ColorsManager.greyLight),
        selectedItemColor: ColorsManager.primary,
        unselectedItemColor: ColorsManager.greyLight,
        onTap: (index) =>
            context.read<TenantHomeLayoutCubit>().changeIndex(index),
        items: navigationItems.asMap().entries.map((e) {
          final Color color = selectedIndex == e.key
              ? ColorsManager.primary
              : ColorsManager.greyLight;
          return BottomNavigationBarItem(
              icon: Padding(
                  padding: EdgeInsets.only(bottom: 6.w),
                  child: SvgPicture.asset(e.value.icon,
                      width: 20.h,
                      height: 20.h,
                      // ignore: deprecated_member_use
                      color: color)),
              label: e.value.title);
        }).toList(),
      ),
    );
  }
}
