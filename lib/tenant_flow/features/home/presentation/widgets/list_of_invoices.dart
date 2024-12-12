import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_cubit.dart';

import '../../../../../core/res/custom_text_styles.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../property_owner_flow/features/unit_details/presentation/widgets/unit_details_widgets_imports.dart';

class HomeInvoicesList extends StatelessWidget {
  const HomeInvoicesList({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildBillsList();
  }

  _buildBillsList() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(S.current.yourNextInvoices,
                    style: getBoldStyle(fontSize: 16)),
              ],
            ),
            16.verticalSpace,
            SizedBox(
              height: 80,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: state.invoices.length,
                  itemBuilder: (context, index) => SizedBox(
                      width: 300,
                      child: InvoiceItem(
                        invoiceModel: state.invoices[index],
                        margin: EdgeInsets.zero,
                      )),
                  separatorBuilder: (context, index) => 16.horizontalSpace),
            )
            // _buildBillsList(),
          ],
        );
      },
    );
  }
}
