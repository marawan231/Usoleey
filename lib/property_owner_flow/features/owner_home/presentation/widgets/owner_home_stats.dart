part of'owner_home_widgets_imports.dart';

class OwnerHomeStats extends StatelessWidget {
  const OwnerHomeStats({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OwnerHomeCubit, OwnerHomeState>(
      builder: (context, state) {
        return GridView(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 8.sp, mainAxisSpacing: 8.sp),
          children: [
            StatsItem(
                icon: AssetsManager.navbarHome,
                title: S.current.unitsCount,
                value: state.homeModel?.stats!.unitsCount ?? 0,
                requestState: state.getHomeStatsState),
            StatsItem(
                icon: AssetsManager.money,
                title: S.current.annualRent,
                value: state.homeModel?.stats!.totalRents ?? 0,
                requestState: state.getHomeStatsState),
            StatsItem(
                icon: AssetsManager.homeUser,
                title: S.current.tenantsCount,
                value: state.homeModel?.stats!.tenantsCount ?? 0,
                requestState: state.getHomeStatsState),
            StatsItem(
                icon: AssetsManager.openTickets,
                title: S.current.openTickets,
                value: state.homeModel?.stats!.openTickets ?? 0,
                requestState: state.getHomeStatsState)
          ],
        );
      },
    );
  }
}
