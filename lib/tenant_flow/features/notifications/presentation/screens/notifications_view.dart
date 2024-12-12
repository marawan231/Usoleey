import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_shared_appbar.dart';
import 'package:flutter_complete_project/generated/l10n.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: S.current.notifications,
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return ListView.separated(
        // padding: EdgeInsetsDirectional.only(top: 16, bottom: 16),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsetsDirectional.only(
                start: 24, end: 24, top: 16, bottom: 16),
            // selectedColor: ColorsManager.primaryLight,
            tileColor: (index == 1 || index == 2 || index == 2 || index == 0)
                ? ColorsManager.primaryLighter
                : const Color.fromRGBO(0, 0, 0, 0),
            title: Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                'تم تغيير حالة التذكرة رقم #123',
                style: getBoldStyle(fontSize: 14),
              ),
            ),
            horizontalTitleGap: 8,
            subtitle: Text(
              'تم تغيير حالة التذكرة رقم ١٢٣ إلي جارية عن طريق الوسيط',
              style: getRegularStyle(
                fontSize: 12,
                color: ColorsManager.greyLight,
              ),
            ),
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorsManager.primaryLight,
                // borderRadius: BorderRadius.circular(8.r),
              ),
              child: Icon(
                Icons.notifications,
                color: ColorsManager.primary,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox.shrink();
        },
        itemCount: 20);
  }
}
