import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/features/home/presentation/widgets/home_custom_button.dart';
import 'package:flutter_complete_project/features/home/presentation/widgets/home_unit_item_background.dart';
import 'package:flutter_complete_project/features/home/presentation/widgets/rent_time_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      padding: EdgeInsets.symmetric(horizontal: 10.sp),
      child: Text(
        unit.address ?? '',
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: getBoldStyle(
            fontSize: 14.sp, color: ColorsManager.primaryDark, height: 1.3.sp),
      ),
    );
  }

  _buildRentValue() {
    return Text(
      '${unit.rent} ريال/شهري',
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: getBoldStyle(
        fontSize: 11.sp,
        color: ColorsManager.greyLight,
      ),
    );
  }

  _buildRentTime() {
    return RentTimeContainer(
      rentTime: unit.rentCollectionDate ?? '',
    );
  }
}
