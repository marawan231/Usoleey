import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/utils/utils.dart';
import 'package:flutter_complete_project/core/widgets/empty_lottie.dart';
import 'package:flutter_complete_project/features/invoices/data/models/choice_model.dart';
import 'package:flutter_complete_project/features/invoices/logic/invoices_cubit.dart';
import 'package:flutter_complete_project/features/invoices/logic/invoices_state.dart';
import 'package:flutter_complete_project/features/invoices/presentation/widgets/invoices_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<ChoiceModel> choices = [
  ChoiceModel(label: 'الكل', isSelected: true, type: "all"),
  ChoiceModel(label: 'الإيجار', isSelected: false, type: "rent"),
  ChoiceModel(label: 'المياه', isSelected: false, type: "water"),
  ChoiceModel(label: 'التذاكر', isSelected: false, type: "ticket"),
];

class MyInvoicesView extends StatefulWidget {
  const MyInvoicesView({super.key});

  @override
  State<MyInvoicesView> createState() => _MyInvoicesViewState();
}

class _MyInvoicesViewState extends State<MyInvoicesView> {
  @override
  void initState() {
    choices.forEach((element) {
      element.isSelected = false;
    });
    choices[0].isSelected = true;
    getIt<InvoicesCubit>().filterInvoicesByType('all');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InvoicesCubit, InvoicesState>(
      builder: (context, state) {
        return getIt<InvoicesCubit>().selectedInvoices.isEmpty
            ? EmptyLottie(
                lottiePath: AssetsManager.emptyInvoices,
                title: 'لايوجد لديك فواتير',
                subTitle: 'عند نزول الفواتير ستظهر هنا',
                isButtonVisible: false,
              )
            : Padding(
                padding: EdgeInsetsDirectional.only(
                    start: 24.sp, end: 24.sp, top: 35.sp),
                child: Column(
                  children: [
                    _buildChoices(),
                    16.verticalSpace,
                    _buildInvoiceList(),
                  ],
                ),
              );
      },
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
                  getIt<InvoicesCubit>()
                      .filterInvoicesByType(choices[index].type ?? 'all');
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
    return BlocBuilder<InvoicesCubit, InvoicesState>(
      builder: (context, state) {
        return Expanded(
          // height: 200,

          child: Material(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: getIt<InvoicesCubit>().selectedInvoices.length,
              itemBuilder: (context, index) {
                return InvoicesItem(
                  onTap: () => launchWebUrl(
                      url: getIt<InvoicesCubit>()
                              .selectedInvoices[index]
                              .file ??
                          'https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf'),
                  icon:
                      getIt<InvoicesCubit>().selectedInvoices[index].icon ?? '',
                  title:
                      getIt<InvoicesCubit>().selectedInvoices[index].type ?? '',
                  subtitle: getCreatedAt(getIt<InvoicesCubit>()
                          .selectedInvoices[index]
                          .createdAt ??
                      ''),
                );
              },
              separatorBuilder: (context, index) {
                return 8.verticalSpace;
              },
            ),
          ),
        );
      },
    );
  }
}
