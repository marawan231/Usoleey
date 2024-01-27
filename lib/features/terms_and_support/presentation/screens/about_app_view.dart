import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_shared_appbar.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutAppView extends StatelessWidget {
  const AboutAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SharedAppBar(
          title: S.current.aboutApp,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.sp, vertical: 16.sp),
          padding: EdgeInsets.symmetric(horizontal: 24.sp, vertical: 16.sp),
          // width: double.infinity,
          // height: double.infinity,
          decoration: BoxDecoration(
              color: ColorsManager.white,
              border: Border.all(color: ColorsManager.grey),
              borderRadius: BorderRadius.circular(8.r)),
          child: Text(
            '.موسبيإ ميرول صن نم خسن ىلع اًضيأ توح يتلاو ركيام جياب سودلأ لثم ينورتكلإلا رشنلا جمارب روهظ عم اَرخؤم ىرخأ ةرم رشتنيل داعو ،صنلا اذه نم عطاقم يوحت ةيكيتسالبلا تيسارتيل قئاقر رادصإ عم نرقلا اذه تايّنيتس يف ريبك لكشب رشتنا. ينورتكلإلا ديضنتلاو ةعابطلا يف يلصألا هلكشبو اًمدختسم راص ىتح هنا لب ،صنلا اذه ىلع يضقت مل نمزلا نم نورق ةسمخ. فرحألا هذهل يلكش عجرم وأ ليلد ةباثمب بيّتك نوّكتل ،صن نم اهتذخأ يئاوشع لكشب فرحألا نم ةعومجم صرب ةلوهجم ةعبطم تماق امدنع رشع سماخلا نرقلا ذنم يلكشلا صنلل رايعملا لازيالو موسبيإ ميرول ناك. رشنلا رودو عباطملا تاعانص يف مدختسيُو) ىوتحملا سيلو لكشلا يه ةياغلا نأ ىنعمب (يلكش صن ةطاسبب وه موسبيإ ميرول      .موسبيإ ميرول صن نم خسن ىلع اًضيأ توح يتلاو ركيام جياب سودلأ لثم ينورتكلإلا رشنلا جمارب روهظ عم اَرخؤم ىرخأ ةرم رشتنيل داعو ،صنلا اذه نم عطاقم يوحت ةيكيتسالبلا تيسارتيل قئاقر رادصإ عم نرقلا اذه تايّنيتس يف ريبك لكشب رشتنا. ينورتكلإلا ديضنتلاو ةعابطلا يف يلصألا هلكشبو اًمدختسم راص ىتح هنا لب ،صنلا اذه ىلع يضقت مل نمزلا نم نورق ةسمخ. فرحألا هذهل يلكش عجرم وأ ليلد ةباثمب بيّتك نوّكتل ،صن نم اهتذخأ يئاوشع لكشب فرحألا نم ةعومجم صرب ةلوهجم ةعبطم تماق امدنع رشع سماخلا نرقلا ذنم يلكشلا صنلل رايعملا لازيالو موسبيإ ميرول ناك. رشنلا رودو عباطملا تاعانص يف مدختسيُو) ىوتحملا سيلو لكشلا يه ةياغلا نأ ىنعمب (يلكش صن ةطاسبب وه موسبيإ ميرول asdksamdkakdas,mdskdnasndklasdjhkdhadsjahsjaslkdjnaksdhaksdhaksdjadksj ',
            style: getRegularStyle(fontSize: 14.sp, height: 1.2.sp),
          ),
        ));
  }
}
