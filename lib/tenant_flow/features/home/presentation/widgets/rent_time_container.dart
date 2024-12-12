import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/utils/utils.dart';

import '../../../../../generated/l10n.dart';

class RentTimeContainer extends StatelessWidget {
  const RentTimeContainer({super.key, required this.rentTime});

  final String? rentTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 24,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      margin: EdgeInsetsDirectional.symmetric(horizontal: 16),
      // width: double.infinity,
      decoration: BoxDecoration(
        color: ColorsManager.green,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.calendar_today_outlined,
            color: ColorsManager.greenDark,
            size: 16,
          ),
          4.horizontalSpace,
          Text(
            '${S.current.nextRentPaymentDate}${rentTime == null ? '' : getCreatedAt(rentTime!)}',
            style: getBoldStyle(fontSize: 12, color: ColorsManager.greenDark),
          ),
        ],
      ),
    );
  }
}
