part of 'owner_home_widgets_imports.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    String role = getIt<UserCubit>().state.userModel?.role ?? '';
    return role == 'OWNER'
        ? BlocBuilder<OwnerHomeCubit, OwnerHomeState>(
            builder: (context, state) {
              final int? count = state.notificationCount;
              return InkWell(
                onTap: () => Go.toNamed(NamedRoutes.ownerNotification),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  width: 37,
                  height: 37,
                  decoration: BoxDecoration(
                      color: ColorsManager.primaryLighter,
                      borderRadius: BorderRadius.circular(8)),
                  child: badges.Badge(
                    badgeContent: count != null &&
                            state.getHomeStatsState != RequestState.loading
                        ? Text(state.notificationCount.toString(),
                            style:
                                getBoldStyle(fontSize: 11, color: Colors.white))
                        : CupertinoActivityIndicator(radius: 5),
                    position: badges.BadgePosition.topStart(start: -3),
                    showBadge: count != null && count > 0,
                    child: SvgPicture.asset(AssetsManager.ownerBell),
                  ),
                ),
              );
            },
          )
        : BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              final int? count = state.notificationCount;
              return InkWell(
                onTap: () => Go.toNamed(NamedRoutes.ownerNotification),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  width: 37,
                  height: 37,
                  decoration: BoxDecoration(
                      color: ColorsManager.primaryLighter,
                      borderRadius: BorderRadius.circular(8)),
                  child: badges.Badge(
                    badgeContent: count != null &&
                            state.getNotificationCountRequestState !=
                                RequestState.loading
                        ? Text(state.notificationCount.toString(),
                            style:
                                getBoldStyle(fontSize: 11, color: Colors.white))
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
