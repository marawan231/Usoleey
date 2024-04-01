part of 'owner_home_widgets_imports.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OwnerHomeCubit, OwnerHomeState>(
      builder: (context, state) {
        final int? count = state.notificationCount;
        return InkWell(
          onTap: () => Go.toNamed(NamedRoutes.ownerNotification),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            width: 37.sp,
            height: 37.sp,
            decoration: BoxDecoration(
                color: ColorsManager.primaryLighter,
                borderRadius: BorderRadius.circular(8.r)),
            child: badges.Badge(
              badgeContent: count != null &&
                      state.getHomeStatsState != RequestState.loading
                  ? Text(state.notificationCount.toString(),
                      style: getBoldStyle(fontSize: 11, color: Colors.white))
                  : CupertinoActivityIndicator(radius: 5),
              position: badges.BadgePosition.topStart(start: -3),
              showBadge: count != null && count > 0,
              child: SvgPicture.asset(AssetsManager.ownerBell),
            ),
          ),
        );
      },
    );
  }
}
