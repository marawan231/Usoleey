import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_shared_appbar.dart';
import 'package:flutter_complete_project/features/offers/presentation/widgets/offers_item.dart';
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
      itemBuilder: (context, index) => _buildItem(),
      separatorBuilder: (context, index) => 16.verticalSpace,
      itemCount: 10,
    );
  }

  _buildItem() {
    return OffersItem();
  }
}
