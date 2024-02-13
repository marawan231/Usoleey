import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/features/bills/data/models/choice_model.dart';
import 'package:flutter_complete_project/features/bills/presentation/widgets/bill_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<ChoiceModel> choices = [
  ChoiceModel(label: 'الكل', isSelected: true),
  ChoiceModel(label: 'الإيجار', isSelected: false),
  ChoiceModel(label: 'المياه', isSelected: false),
  ChoiceModel(label: 'التذاكر', isSelected: false),
];

class MyBillsView extends StatefulWidget {
  const MyBillsView({super.key});

  @override
  State<MyBillsView> createState() => _MyBillsViewState();
}

class _MyBillsViewState extends State<MyBillsView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 24.sp, end: 24.sp, top: 35.sp),
      child: Column(
        children: [
          _buildChoices(),
          16.verticalSpace,
          _buildInvoiceList(),
        ],
      ),
    );
  }

  _buildChoices() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Wrap(
          alignment: WrapAlignment.start,
          // clipBehavior: Clip.hardEdge,
          spacing: 8.sp,
          runSpacing: 8.sp,
          // runAlignment: WrapAlignment.center,
          children: List.generate(
            choices.length,
            (index) => FilterChip(
              padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 10.sp),
              selected: choices[index].isSelected ?? false,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(
                    color: ColorsManager.primary,
                  )),
              selectedColor: ColorsManager.primary,
              label: Text(
                choices[index].label ?? '',
                // style:,
              ),
              showCheckmark: false,
              labelStyle: choices[index].isSelected!
                  ? getBoldStyle(fontSize: 12.sp, color: Colors.white)
                  : getRegularStyle(
                      fontSize: 12.sp, color: ColorsManager.primary),
              onSelected: (value) {
                setState(() {
                  choices.forEach((element) {
                    element.isSelected = false;
                  });
                  choices[index].isSelected = true;
                });
              },
            ),
          ),
        ),
      ],
    );
  }

  _buildInvoiceList() {
    return Expanded(
      // height: 200,

      child: Material(
        child: ListView.separated(
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          // clipBehavior: Clip.none,
          // primary: true,
          // padding: EdgeInsetsDirectional.only(top: 10.sp, bottom: 16.sp),
          // shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return BillItem(
              icon: AssetsManager.water,
              title: 'فاتورة المياه',
              subtitle: 'فبراير ١٤، ٢٠٢٣',
            );
          },
          separatorBuilder: (context, index) {
            return 8.verticalSpace;
          },
        ),
      ),
    );
  }
}
