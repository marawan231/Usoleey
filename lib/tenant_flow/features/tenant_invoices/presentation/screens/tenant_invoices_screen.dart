import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/extensions/scroll_controller_extension.dart';
import 'package:flutter_complete_project/core/extensions/seperator_helper.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_shared_appbar.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/res/assets_manager.dart';
import '../../../../../core/widgets/base_remote_widget.dart';
import '../../../../../core/widgets/custom_pagination_list.dart';
import '../../../../../core/widgets/empty_lottie.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../property_owner_flow/features/owner_invoices/presentation/screens/owner_invoices_screens_imports.dart';
import '../../../../../property_owner_flow/features/unit_details/presentation/widgets/unit_details_widgets_imports.dart';
import '../../logic/tenant_invoices_cubit.dart';
import '../widgets/tenant_invoices_widgets_imports.dart';

class TenantInvoicesScreen extends StatelessWidget {
  const TenantInvoicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: getIt<TenantInvoicesCubit>(), child: TenantInvoicesView());
  }
}

class TenantInvoicesView extends StatefulWidget {
  const TenantInvoicesView({super.key});

  @override
  State<TenantInvoicesView> createState() => _TenantInvoicesViewState();
}

class _TenantInvoicesViewState extends State<TenantInvoicesView> {
  late final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    getIt<TenantInvoicesCubit>().getTenantRentInvoices(firstTime: true);
    scrollController.onScrollEndsListener(
        () => getIt<TenantInvoicesCubit>().getTenantRentInvoices());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(title: S.current.bills, leading: SizedBox()),
      body: BlocBuilder<TenantInvoicesCubit, TenantInvoicesState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 24.h),
            child: Column(
              children: [
                TenantInvoicesTabBar(),
                16.verticalSpace,
                Expanded(child:
                    BlocBuilder<TenantInvoicesCubit, TenantInvoicesState>(
                  builder: (context, state) {
                    return RefreshIndicator(
                      onRefresh: () => getIt<TenantInvoicesCubit>()
                          .getTenantRentInvoices(firstTime: true),
                      child: BaseRemoteWidget(
                          requestState: state.getTenantInvoicesState,
                          loadingWidget: InvoicesListShimmer(),
                          successWidget: state.invoices.isNotEmpty
                              ? CustomPaginationList(
                                  padding: EdgeInsets.zero,
                                  childAspectRatio: 5,
                                  scrollController: scrollController,
                                  itemBuilder: (index) => InvoiceItem(
                                      invoiceModel: state.invoices[index]),
                                  allListCount:
                                      getIt<TenantInvoicesCubit>().count,
                                  paginationList: state.invoices)
                              : EmptyLottie(
                                  lottiePath: AssetsManager.emptyInvoices,
                                  title: S.current.emptyInvoices,
                                  subTitle: S.current.emptyInvoicesSubTitle,
                                  isButtonVisible: false,
                                  padding: 0)),
                    );
                  },
                ))
              ],
            ),
          );
        },
      ),
    );
  }
}

class InvoicesListShimmer extends StatelessWidget {
  const InvoicesListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(10, (index) => InvoiceShimmerItem())
          .joinWith(8.verticalSpace),
    );
  }
}
