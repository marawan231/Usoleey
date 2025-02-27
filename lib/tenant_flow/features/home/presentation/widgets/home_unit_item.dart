
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/widgets/home_custom_button.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/widgets/home_unit_item_background.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/widgets/rent_time_container.dart';

import '../../../../../generated/l10n.dart';
import '../../data/models/units_model.dart';

class HomeUnitItem extends StatelessWidget {
  const HomeUnitItem({super.key, required this.unit});

  final Units unit;

  @override
  Widget build(BuildContext context) {
    return _buildPropertyItem();
  }

  _buildPropertyItem() {
    return HomeUnitItemBackGround(
      child: Column(
        children: [
          _buildAddress(),
          4.verticalSpace,
          _buildRentValue(),
          8.verticalSpace,
          _buildRentTime(),
          16.horizontalSpace,
          HomeCustomButton(unit: unit),
          16.verticalSpace,
        ],
      ),
    );
  }

  _buildAddress() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        unit.address ?? '',
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: getBoldStyle(
            fontSize: 14, color: ColorsManager.primaryDark, height: 1.3),
      ),
    );
  }

  _buildRentValue() {
    return Text(
      unit.rentCollectionRate == 'YEARLY'
          ? '${unit.rent} ${S.current.yearSar}'
          : '${unit.rent} ${S.current.monthSar}',
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: getBoldStyle(
        fontSize: 11,
        color: ColorsManager.greyLight,
      ),
    );
  }

  _buildRentTime() {
    // log('unit.rentCollectionDate: ${unit.rentCollectionDate}');
    return RentTimeContainer(
      rentTime: unit.rentCollectionDate,
    );
  }
}
