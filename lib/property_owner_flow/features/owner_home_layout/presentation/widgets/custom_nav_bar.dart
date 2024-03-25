part of 'owner_home_layout_widgets_imports.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  List<NavigationItem> get navigationItems => [
        NavigationItem(icon: AssetsManager.navbarHome, title: S.current.main),
        NavigationItem(
            icon: AssetsManager.realState, title: S.current.myRealEstate),
        NavigationItem(
            icon: AssetsManager.navbarTickets, title: S.current.tickets),
        NavigationItem(icon: AssetsManager.navbarMore, title: S.current.more)
      ];

  @override
  Widget build(BuildContext context) {
    final selectedIndex =
        context.select((OwnerHomeLayoutCubit cubit) => cubit.state.index);
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
                  color: ColorsManager.grey.withOpacity(.18), width: .1))),
      child: ClipRRect(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          currentIndex: selectedIndex,
          selectedItemColor: ColorsManager.primary,
          unselectedItemColor: ColorsManager.greyLight,
          onTap: (index) =>
              context.read<OwnerHomeLayoutCubit>().changeIndex(index),
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
      ),
    );
  }
}
