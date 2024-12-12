import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_shared_appbar.dart';
import 'package:flutter_complete_project/generated/l10n.dart';

class AboutAppView extends StatelessWidget {
  const AboutAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: S.current.aboutApp,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          color: ColorsManager.white,
          border: Border.all(color: ColorsManager.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'أصولي هو حل متكامل لمكاتب العقار،.',
              style: getRegularStyle(fontSize: 14, height: 1.2),
            ),
            SizedBox(height: 16),
            Text(
              'من جهة أخرى، يوفر التطبيق للمستأجرين والملاك إمكانية الوصول الفوري إلى معلوماتهم عبر تطبيق مخصص، مما يمكنهم من معرفة مواعيد الإيجارات، والحصول على تذكيرات دورية بالمدفوعات المستحقة.',
              style: getRegularStyle(fontSize: 14, height: 1.2),
            ),
            SizedBox(height: 16),
            Text(
              'مع أصولي, تصبح إدارة العقارات تجربة سهلة وفعالة للجميع.',
              style: getRegularStyle(fontSize: 14, height: 1.2),
            ),
          ],
        ),
      ),
    );
  }
}
