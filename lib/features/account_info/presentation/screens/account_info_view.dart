import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_shared_appbar.dart';
import 'package:flutter_complete_project/features/account_info/data/models/account_info.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<AccountInfo> accountInfoList = [
  AccountInfo(title: S.current.userName, value: 'محمد عبد الرحمن'),
  AccountInfo(title: S.current.email, value: 'example@domain.com'),
  AccountInfo(title: S.current.mobileNumber, value: '05693994932'),
  AccountInfo(title: S.current.password, value: S.current.change),
];

class AccountInfoView extends StatelessWidget {
  const AccountInfoView({super.key});

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
              padding: EdgeInsets.symmetric(horizontal: 24.sp, vertical: 16.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    accountInfoList[index].title!,
                    style: getRegularStyle(
                      fontSize: 14.sp,
                      color: ColorsManager.greyLight,
                    ),
                  ),
                  // Spacer(),
                  Text(
                    accountInfoList[index].value!,
                    style: getBoldStyle(
                      fontSize: 14.sp,
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
      padding: EdgeInsets.symmetric(horizontal: 24.sp, vertical: 24.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 64.sp,
            height: 64.sp,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorsManager.primaryLight,
              image: DecorationImage(
                image: AssetImage(AssetsManager.appLogo),
                fit: BoxFit.cover,
              ),
              // borderRadius: BorderRadius.circular(8.r),
            ),
          ),
          //change image
          InkWell(
            onTap: () {},
            child: Text(
              S.current.changeImage,
              style: getBoldStyle(
                color: ColorsManager.primary,
                fontSize: 14.sp,
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