import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/shared_cubits/user_cubit/user_cubit.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_shared_appbar.dart';
import 'package:flutter_complete_project/core/widgets/custom_cached_image.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
import 'package:flutter_complete_project/tenant_flow/features/account_info/data/models/account_info.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/data/models/auth_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/logic/cubit/auth_cubit.dart';

late List<AccountInfo> accountInfoList;

class AccountInfoView extends StatefulWidget {
  const AccountInfoView({super.key});

  @override
  State<AccountInfoView> createState() => _AccountInfoViewState();
}

class _AccountInfoViewState extends State<AccountInfoView> {
  @override
  void initState() {
    final UserModel? userModel = getIt<UserCubit>().state.userModel;
    accountInfoList = [
      AccountInfo(
          title: S.current.userName,
          value: '${userModel?.firstName} ${userModel?.lastName}'),
      AccountInfo(title: S.current.email, value: userModel?.email),
      AccountInfo(title: S.current.mobileNumber, value: userModel?.phoneNumber),
      AccountInfo(title: S.current.password, value: S.current.change),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: S.current.accountInfo,
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Container(
      color: ColorsManager.white,
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          _buildProfileImage(),
          Divider(),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    accountInfoList[index].title!,
                    style: getRegularStyle(
                      fontSize: 14,
                      color: ColorsManager.greyLight,
                    ),
                  ),
                  // Spacer(),
                  Text(
                    accountInfoList[index].value!,
                    style: getBoldStyle(
                      fontSize: 14,
                      color: ColorsManager.primary,
                    ),
                  ),
                ],
              ),
            ),
            separatorBuilder: (context, index) => Divider(),
            itemCount: accountInfoList.length,
          ),
        ],
      ),
    );
  }

  _buildProfileImage() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorsManager.primaryLight,

              // borderRadius: BorderRadius.circular(8.r),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: CustomCachedImage(
                image: getIt<AuthCubit>().userModel?.photo ?? '',
                width: 64,
                height: 64,
              ),
            ),
          ),
          //change image
          InkWell(
            onTap: () {},
            child: Text(
              S.current.changeImage,
              style: getBoldStyle(
                color: ColorsManager.primary,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*
ListView.separated(itemBuilder: (context, index) {

    }, separatorBuilder: (context, index) {

    }, itemCount: ,);*/
