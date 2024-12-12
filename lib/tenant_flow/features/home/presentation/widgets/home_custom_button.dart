import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';

import '../../../../../generated/l10n.dart';
import '../../data/models/units_model.dart';

class HomeCustomButton extends StatelessWidget {
  const HomeCustomButton(
      {super.key, this.isAddButton, this.unit, this.onTap, this.text});

  final bool? isAddButton;
  final Units? unit;
  final void Function()? onTap;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
          () {
            Go.toNamed(NamedRoutes.propertyDetails, arguments: {'unit': unit});
          },
      child: Container(
        margin: EdgeInsetsDirectional.only(top: 16),
        width: double.infinity,
        height: 35,
        // color: ColorsManager.greyLight,
        decoration: BoxDecoration(
          color: ColorsManager.white,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: ColorsManager.primaryDark),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Visibility(
              visible: isAddButton ?? false,
              child: Padding(
                padding: EdgeInsetsDirectional.only(top: 2, end: 8),
                child: Icon(
                  Icons.add,
                  size: 12,
                ),
              ),
            ),
            Text(
              text ?? S.current.showDetails,
              style:
                  getBoldStyle(fontSize: 12, color: ColorsManager.primaryDark),
            ),
          ],
        ),
      ),
    );
  }
}
