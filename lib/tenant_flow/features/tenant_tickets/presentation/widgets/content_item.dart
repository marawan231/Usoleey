import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';

import '../../../../../generated/l10n.dart';

class ContetntItem extends StatelessWidget {
  const ContetntItem({super.key, this.label, this.onPressed});

  final String? label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: ColorsManager.primaryLighter,
        // border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(label ?? '',
                overflow: TextOverflow.ellipsis,
                style: getBoldStyle(
                    fontSize: 12, color: ColorsManager.primaryDark)),
          ),
          TextButton(
              onPressed: onPressed,
              child: Text(
                S.current.change,
                style: getBoldStyle(
                    fontSize: 12, color: ColorsManager.primaryDark),
              )),
        ],
      ),
    );
  }
}
