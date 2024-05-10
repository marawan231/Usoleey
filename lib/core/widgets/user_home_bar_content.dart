import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';
import '../../tenant_flow/features/login/data/models/auth_model.dart';
import '../di/dependency_injection.dart';
import '../res/custom_text_styles.dart';
import '../shared_cubits/user_cubit/user_cubit.dart';
import '../theming/colors.dart';

class UserHomeAppbarContent extends StatelessWidget {
  const UserHomeAppbarContent({super.key});

  @override
  Widget build(BuildContext context) {
    final UserModel userModel = getIt<UserCubit>().state.userModel!;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: 40.sp,
            height: 40.sp,
            decoration: BoxDecoration(
                color: ColorsManager.black, shape: BoxShape.circle)),
        8.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${S.current.welcome} ${userModel.firstName ?? ''}',
              style: getBoldStyle(
                fontSize: 16.sp,
                color: ColorsManager.black,
              ),
            ),
            4.verticalSpace,
            Text(
                userModel.role == 'OWNER'
                    ? S.current.propertyOwner
                    : S.current.tenant,
                style: getBoldStyle(
                    fontSize: 11.sp, color: ColorsManager.greyLight)),
          ],
        ),
      ],
    );
  }
}
