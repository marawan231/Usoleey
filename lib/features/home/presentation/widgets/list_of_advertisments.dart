import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/features/home/presentation/logic/cubit/home_state.dart';
import 'package:flutter_complete_project/features/offers/presentation/widgets/offers_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdvetisementsList extends StatelessWidget {
  const AdvetisementsList({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildOffersList();
  }

  _buildOffersList() {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is GetAdsLoading ||
          current is GetAdsSuccess ||
          current is GetAdsError,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'اسكتشف احدث عروض الإيجار',
                  style: getBoldStyle(fontSize: 16.sp),
                ),
                InkWell(
                  onTap: () {
                    Go.toNamed(NamedRoutes.offers);
                  },
                  child: Text(
                    'المزيد',
                    style: getBoldStyle(
                        fontSize: 12.sp, color: ColorsManager.primaryDark),
                  ),
                ),
              ],
            ),
            16.verticalSpace,
            SizedBox(
              height: 180.sp,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: _getCount(),
                itemBuilder: (context, index) => OffersItem(
                  ads: getIt<HomeCubit>().ads[index],
                  width: 284.sp,
                  height: 120.sp,
                ),
                separatorBuilder: (context, index) => 16.horizontalSpace,
              ),
            ),
          ],
        );
      },
    );
  }

  int _getCount() {
    //if legnth of ads is less than 4 return the length of ads else return length
    return getIt<HomeCubit>().ads.length > 4
        ? 4
        : getIt<HomeCubit>().ads.length;
  }
}
