import 'package:flutter/material.dart';

import '../../property_owner_flow/features/owner_home/presentation/widgets/owner_home_widgets_imports.dart';
import '../theming/colors.dart';
import 'user_home_bar_content.dart';

class UserHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UserHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 30, right: 24, left: 24),
        decoration: BoxDecoration(
            color: ColorsManager.white,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))),
        child: Row(
          children: [
            Expanded(child: const UserHomeAppbarContent()),
            NotificationButton()
          ],
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
