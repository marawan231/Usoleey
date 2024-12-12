part of 'owner_home_widgets_imports.dart';

class OwnerHomeBody extends StatelessWidget {
  const OwnerHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => getIt<OwnerHomeCubit>().getHomeStats(),
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        children: [OwnerHomeStats(), 24.verticalSpace, RecentTickets()],
      ),
    );
  }
}
