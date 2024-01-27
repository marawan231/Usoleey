import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_shared_appbar.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpAndSupportView extends StatelessWidget {
  const HelpAndSupportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: S.current.helpAndSupport,
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return ListView.separated(
        padding:
            EdgeInsetsDirectional.symmetric(horizontal: 24.sp, vertical: 16.sp),
        itemBuilder: (context, index) => ListTile(
              //border color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
                side: BorderSide(
                  color: ColorsManager.grey,
                ),
              ),

              tileColor: ColorsManager.white,
              // minVerticalPadding: 2,
              // minLeadingWidth: 4,
              horizontalTitleGap: 8.sp,
              contentPadding: EdgeInsetsDirectional.only(
                start: 16.sp,
                end: 16.sp,
                top: 8.sp,
                bottom: 8.sp,
              ),
              leading: Container(
                  width: 50.sp,
                  height: 50.sp,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorsManager.primaryLighter,
                  ),
                  child: Icon(
                    supportList[index].icon,
                    color: ColorsManager.primary,
                  )),
              title: Padding(
                padding: EdgeInsets.only(bottom: 4.sp),
                child: Text(
                  supportList[index].title!,
                  style: getRegularStyle(
                    fontSize: 12.sp,
                    color: ColorsManager.greyLight,
                  ),
                ),
              ),
              subtitle: Text(
                supportList[index].subtitle!,
                style: getBoldStyle(
                  fontSize: 16.sp,
                  color: ColorsManager.primaryDark,
                ),
              ),
            ),
        separatorBuilder: (context, index) => 8.verticalSpace,
        itemCount: 3);
  }
}

class SupportModel {
//icon
//title
//subtitle

  final String? title;
  final String? subtitle;
  final IconData? icon;

  SupportModel({this.title, this.subtitle, this.icon});
}

List<SupportModel> supportList = [
  SupportModel(
    title: S.current.contactUsWithMobile,
    subtitle: '15938',
    icon: Icons.phone_in_talk_outlined,
  ),
  SupportModel(
    title: S.current.contactUsWithEmial,
    subtitle: 'support@usoly.com',
    icon: Icons.alternate_email_outlined,
  ),
  SupportModel(
    title: S.current.SendUsUsingApp,
    subtitle: 'ارسال رسالة',
    icon: Icons.email_outlined,
  ),
];
