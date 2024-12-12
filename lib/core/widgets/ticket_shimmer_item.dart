import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/extensions/seperator_helper.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';

import '../theming/colors.dart';
import 'custom_shimmer.dart';

class TicketShimmerItem extends StatelessWidget {
  const TicketShimmerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorsManager.white,
          border: Border.all(color: ColorsManager.grey, width: 1),
          borderRadius: BorderRadius.circular(8)),
      width: MediaQuery.of(context).size.width -
          24 -
          MediaQuery.of(context).size.width * 0.15,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomShimmer(height: 24, width: 112),
              8.horizontalSpace,
              CustomShimmer(height: 24, width: 49),
              Spacer(),
              CustomShimmer(height: 16, width: 48),
            ],
          ),
          Row(
            children: [
              CustomShimmer(
                height: 35,
                width: 35,
                radius: 30,
              ),
              8.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomShimmer(height: 12, width: 100),
                  6.verticalSpace,
                  CustomShimmer(height: 12, width: 180),
                  10.verticalSpace,
                ],
              ),
            ],
          ),
          Center(child: CustomShimmer(height: 36, width: double.infinity)),
        ].joinWith(15.verticalSpace),
      ),
      // child:
    );
  }
}
