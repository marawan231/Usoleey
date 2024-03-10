
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/utils/utils.dart';
import 'package:flutter_complete_project/core/widgets/app_custom_navbar.dart';
import 'package:flutter_complete_project/tenant_flow/features/invoices/logic/invoices_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/invoices/logic/invoices_state.dart';
import 'package:flutter_complete_project/tenant_flow/features/invoices/presentation/widgets/invoices_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeInvoicesList extends StatelessWidget {
  const HomeInvoicesList({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildBillsList();
  }

  _buildBillsList() {
    return BlocBuilder<InvoicesCubit, InvoicesState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'فواتيرك القادمة',
                  style: getBoldStyle(fontSize: 16.sp),
                ),
                InkWell(
                  onTap: () {
                    selectedTab = 1;
                    Go.toNamed(NamedRoutes.layout);
                  },
                  child: Text(
                    'المزيد',
                    style: getBoldStyle(
                        fontSize: 12.sp, color: ColorsManager.primaryDark),
                  ),
                ),
              ],
            ),
            16.verticalSpace,
            // BillItem(),
            SizedBox(
              height: 78.sp,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: getCount(getIt<InvoicesCubit>().invoices.length),
                itemBuilder: (context, index) => InvoicesItem(
                  title: getIt<InvoicesCubit>().invoices[index].type ?? '',
                  subtitle: getCreatedAt(
                      getIt<InvoicesCubit>().invoices[index].createdAt ?? ''),
                  icon: getIt<InvoicesCubit>().invoices[index].icon,
                  width: 268.sp,
                  height: 70.sp,
                ),
                separatorBuilder: (context, index) => 16.horizontalSpace,
              ),
            ),
            // _buildBillsList(),
          ],
        );
      },
    );
  }
}
