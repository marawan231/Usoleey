part of 'owner_home_widgets_imports.dart';

class OwnerHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OwnerHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 30.h, right: 24.w, left: 24.w),
        decoration: BoxDecoration(
            color: ColorsManager.white,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16.r))),
        child: Row(
          children: [
            Expanded(child: const OwnerHomeAppbarContent()),
            NotificationButton()
          ],
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
