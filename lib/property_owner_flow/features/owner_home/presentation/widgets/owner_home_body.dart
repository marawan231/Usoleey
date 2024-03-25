part of 'owner_home_widgets_imports.dart';

class OwnerHomeBody extends StatelessWidget {
  const OwnerHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
      children: [OwnerHomeStats(), 24.verticalSpace, RecentTickets()],
    );
  }
}


