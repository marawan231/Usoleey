import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/widgets/app_shared_appbar.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/offers/presentation/widgets/offers_item.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: S.current.offers,
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return ListView.separated(
      padding:
          EdgeInsetsDirectional.symmetric(horizontal: 24.sp, vertical: 16.sp),
      shrinkWrap: true,
      itemBuilder: (context, index) => _buildItem(index),
      separatorBuilder: (context, index) => 16.verticalSpace,
      itemCount: getIt<HomeCubit>().ads.length,
    );
  }

  _buildItem(int index) {
    return OffersItem(
      ads: getIt<HomeCubit>().ads[index],
    );
  }
}
