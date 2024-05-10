import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/extensions/seperator_helper.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/widgets/base_remote_widget.dart';
import 'package:flutter_complete_project/core/widgets/user_home_app_bar.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/widgets/custom_services.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/widgets/expandaple_page_view.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/widgets/home_custom_button.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/widgets/home_unit_item.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/widgets/home_unit_item_background.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/widgets/list_of_advertisments.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/widgets/list_of_invoices.dart';
import 'package:flutter_complete_project/tenant_flow/features/on_boarding/presentation/widgets/on_boarding_widgets_imports.dart';
import 'package:flutter_complete_project/tenant_flow/features/tenant_tickets/presentation/logic/cubit/tenant_tickets_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/enums/enums.dart';
import '../../../../../core/res/assets_manager.dart';
import '../../../../../core/shared_cubits/user_cubit/user_cubit.dart';
import '../../../../../core/widgets/custom_shimmer.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../property_owner_flow/features/my_real_estate/presentation/widgets/my_real_estate_widgets_imports.dart';
import '../../../tenant_tickets/data/models/tickets_status_model.dart';

class TenantHomeScreen extends StatelessWidget {
  const TenantHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider.value(value: getIt<HomeCubit>()),
      BlocProvider(create: (context) => getIt<UserCubit>()),
    ], child: HomeView());
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // controller
  PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    getIt<HomeCubit>().getAds();
    getIt<HomeCubit>().getAllUnits();
    getIt<HomeCubit>().getNotificationCount();
    getIt<HomeCubit>().getNextInvoices();
    getIt<TenantTicketsCubit>().ticketsTypes = [
      TicketsStatusModelData(
          id: 1,
          icon: AssetsManager.maintenance,
          label: S.current.service,
          type: TicketType.service,
          subTitle: S.current.serviceDescription),
      TicketsStatusModelData(
          id: 2,
          icon: AssetsManager.warningChat,
          type: TicketType.complain,
          label: S.current.complain,
          subTitle: S.current.complainDescription),
      TicketsStatusModelData(
          id: 3,
          icon: AssetsManager.maintenance,
          type: TicketType.other,
          label: S.current.other,
          subTitle: S.current.otherDescription),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: UserHomeAppBar(), body: _buildBody());
  }

  _buildBody() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Padding(
          padding:
              EdgeInsetsDirectional.only(start: 16.sp, end: 16.sp, top: 19.sp),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TenantHomeUnits(pageController: _pageController),
                Visibility(
                    visible: state.units.isNotEmpty, child: CustomServices()),
                Visibility(
                    visible: state.units.isNotEmpty,
                    child: AdvetisementsList()),
                Visibility(
                    visible: state.units.isNotEmpty, child: HomeInvoicesList()),
                20.verticalSpace
              ].joinWith(24.verticalSpace),
            ),
          ),
        );
      },
    );
  }

  _buildIndicators(int length) {
    return length == 1
        ? SizedBox.shrink()
        : Center(
            child: MyPageIndicator(
                boardController: _pageController, lenght: length),
          );
  }
}

class TenantHomeUnits extends StatelessWidget {
  final PageController pageController;

  const TenantHomeUnits({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return BaseRemoteWidget(
            requestState: state.getUnitsRequestState,
            loadingWidget: TenantLoadingShimmer(),
            successWidget: state.units.isEmpty
                ? EmptyTenantUnits()
                : Column(
                    children: [
                      SizedBox(
                        height: 300.h,
                        child: ExpandablePageView(
                          pageController: pageController,
                          children: List.generate(
                              state.units.length,
                              (index) =>
                                  HomeUnitItem(unit: state.units[index])),
                        ),
                      ),
                      Visibility(
                          visible:
                              state.units.isNotEmpty || state.units.length > 1,
                          child: Column(
                            children: [
                              16.verticalSpace,
                              state.units == 1
                                  ? SizedBox.shrink()
                                  : Center(
                                      child: MyPageIndicator(
                                          boardController: pageController,
                                          lenght: state.units.length),
                                    ),
                            ],
                          )),
                    ],
                  ));
      },
    );
  }
}

class TenantLoadingShimmer extends StatelessWidget {
  const TenantLoadingShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: ItemBackground(
        isProperty: false,
        curveColor: ColorsManager.grey,
        child: Column(
          children: [
            10.verticalSpace,
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.sp),
                child: CustomShimmer(width: double.infinity, height: 15.h)),
            10.verticalSpace,
            CustomShimmer(width: 120.w, height: 15.h),
            8.verticalSpace,
            CustomShimmer(width: 220.w, height: 15.h),
            16.verticalSpace,
            Center(child: CustomShimmer(height: 30.h, width: double.infinity)),
            20.verticalSpace
          ],
        ),
      ),
    );
  }
}

class EmptyTenantUnits extends StatelessWidget {
  const EmptyTenantUnits({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeUnitItemBackGround(
      child: Column(
        children: [
          Text(S.current.emptyTenantUnitTitle,
              style:
                  getBoldStyle(fontSize: 14.sp, color: ColorsManager.greyLight),
              textAlign: TextAlign.center),
          16.verticalSpace,
          HomeCustomButton(
            text: S.current.explorelatestRentalOffers,
            onTap: () => Go.toNamed(NamedRoutes.offers),
          ),
          16.verticalSpace,
        ],
      ),
    );
  }
}
