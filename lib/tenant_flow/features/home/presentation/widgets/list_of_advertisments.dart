import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/extensions/seperator_helper.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/utils/utils.dart';
import 'package:flutter_complete_project/core/widgets/base_remote_widget.dart';
import 'package:flutter_complete_project/core/widgets/custom_shimmer.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/offers/presentation/widgets/offers_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/l10n.dart';

class AdvetisementsList extends StatelessWidget {
  const AdvetisementsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          16.verticalSpace,
          BaseRemoteWidget(
              requestState: state.getAdsRequestState,
              loadingWidget: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomShimmer(width: 200.sp, height: 15.sp),
                        CustomShimmer(width: 50.sp, height: 10.sp),
                      ],
                    ),
                    16.verticalSpace,
                    Row(
                      children: [
                        CustomShimmer(width: 284.sp, height: 120.sp),
                        CustomShimmer(width: 284.sp, height: 120.sp),
                      ].joinWith(10.horizontalSpace),
                    ),
                  ],
                ),
              ),
              successWidget: Column(children: [
                HomeOffersHeader(),
                16.verticalSpace,
                SizedBox(
                  height: 180.sp,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: getCount(state.ads.length),
                      itemBuilder: (context, index) => OffersItem(
                          ads: state.ads[index], width: 284.sp, height: 120.sp),
                      separatorBuilder: (context, index) => 16.horizontalSpace),
                )
              ]))
        ]);
      },
    );
  }
}

class HomeOffersHeader extends StatelessWidget {
  const HomeOffersHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          S.current.explorelatestRentalOffers,
          style: getBoldStyle(fontSize: 16.sp),
        ),
        InkWell(
          onTap: () {
            Go.toNamed(NamedRoutes.offers);
          },
          child: Text(
            S.current.more,
            style:
                getBoldStyle(fontSize: 12.sp, color: ColorsManager.primaryDark),
          ),
        ),
      ],
    );
  }
}
