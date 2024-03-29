import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/app_custom_navbar.dart';
import 'package:flutter_complete_project/core/widgets/app_shared_appbar.dart';
import 'package:flutter_complete_project/tenant_flow/features/invoices/logic/invoices_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/invoices/presentation/screens/my_invoices_view.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/screens/home_screen.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/logic/cubit/auth_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/more/logic/more_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/more/presentation/screens/more_view.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/logic/cubit/tickets_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/screens/tickets_view.dart';
import 'package:flutter_complete_project/generated/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final List<Widget> layoutScreens = [
  //   const TransactionHistoryView(),
  //multi bloc provider
  MultiBlocProvider(providers: [
    BlocProvider.value(
      value: getIt<HomeCubit>(),
    ),
    BlocProvider.value(
      value: getIt<InvoicesCubit>(),
    ),
  ], child: HomeScreen()),
  BlocProvider.value(
    value: getIt<InvoicesCubit>(),
    child: MyInvoicesView(),
  ),

  MultiBlocProvider(providers: [
    BlocProvider.value(value: getIt<TicketsCubit>()),
  ], child: TicketsView()),
  BlocProvider.value(
    value: getIt<MoreCubit>(),
    child: MoreView(),
  ),

  // const ProfileView(),
];
List<String> layoutTitles = [
  S.current.main,
  S.current.bills,
  S.current.tickets,
  S.current.more,
];

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_s) {
      _fetchInitialData();
    });

    super.initState();
  }

  _fetchInitialData() {
    // getIt<TicketsCubit>().getAllTicketsStatus();
    // getIt<TicketsCubit>().getAllTicketTypes();
    getIt<TicketsCubit>().getAllTickets();
    getIt<InvoicesCubit>().getAllInvoices();
    getIt<MoreCubit>().getContactInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedTab = index;
          });
        },
      ),
      appBar: selectedTab == 0
          ? _buildAppBar()
          : selectedTab == 2
              ? SharedAppBar(
                  title: layoutTitles[2],
                  leading: IconButton(
                    icon: Icon(
                      Icons.add,
                      size: 24.sp,
                    ),
                    onPressed: () {
                      // getIt<TicketsCubit>().getAllTickets();
                    },
                  ),
                )
              : selectedTab == 3
                  ? AppBar(
                      backgroundColor: ColorsManager.primary,
                    )
                  : SharedAppBar(
                      title: layoutTitles[selectedTab],
                    ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return layoutScreens[selectedTab];
  }

  _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(65),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(32.r),
            bottomRight: Radius.circular(32.r),
          ),
        ),
        child: _buildTitle(),
        // actions: _buildActions(),
        // leading: _buildLeading(),
      ),
    );
  }

  _buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(top: 50.sp, start: 24.sp),
          child: _buildLeading(),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(top: 30.sp, end: 24.sp),
          child: _buildActions(),
        ),
      ],
    );
  }

  Widget _buildLeading() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40.sp,
          height: 40.sp,
          decoration: BoxDecoration(
            color: ColorsManager.black,
            shape: BoxShape.circle,
          ),
        ),
        8.horizontalSpace,
        Column(
          // // mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'مرحباً ${getIt<AuthCubit>().userModel?.firstName ?? ''}',
              style: getBoldStyle(
                fontSize: 16.sp,
                color: ColorsManager.black,
              ),
            ),
            4.verticalSpace,
            Text(getIt<AuthCubit>().userModel?.role ?? '',
                style: getBoldStyle(
                  fontSize: 11.sp,
                  color: ColorsManager.greyLight,
                )),
          ],
        ),
      ],
    );
  }

  Widget _buildActions() {
    return Container(
      width: 37.sp,
      height: 37.sp,
      decoration: BoxDecoration(
        color: ColorsManager.primaryLighter,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: InkWell(
        onTap: () {
          Go.back();
        },
        // onTap: () => Go.toNamed(NamedRoutes.notifications),
        child: Icon(
          Icons.notifications_none_outlined,
          color: ColorsManager.primary,
          size: 24.sp,
        ),
      ),
    );
  }
}
