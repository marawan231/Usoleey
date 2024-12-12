import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_svg/svg.dart';

class TicketUnitItem extends StatelessWidget {
  const TicketUnitItem(
      {super.key,
      required this.title,
      this.selected,
      this.onTap,
      this.subTitle,
      this.isSubtitle,
      this.icon});
  final String title;
  final String? subTitle;
  final bool? selected;
  final bool? isSubtitle;
  final String? icon;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: selected ?? true
            ? ColorsManager.primaryLighter
            : ColorsManager.white,
        border: Border.all(color: ColorsManager.grey, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        // minVerticalPadding: 4,
        selected: selected ?? true,
        tileColor: ColorsManager.red,
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),

        leading: Container(
            width: 50,
            height: 50,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: ColorsManager.greyLighter,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              icon ?? AssetsManager.homeUnitIcon,
              // color: ColorsManager.primary,
              width: 20,
              height: 20,
            )),
        title: Padding(
          padding: EdgeInsets.only(bottom: 4),
          child: Text(
            title,
            style: getBoldStyle(fontSize: 14, color: ColorsManager.primaryDark),
          ),
        ),
        subtitle: isSubtitle ?? true
            ? Text(
                subTitle ?? '',
                style: getRegularStyle(
                    fontSize: 12, color: ColorsManager.greyLight),
              )
            : null,
        onTap: onTap ?? () {},
      ),
    );
  }
}
