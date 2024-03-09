import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/navigator/named_routes.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/res/custom_text_styles.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_state.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/widgets/custom_services.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/widgets/expandaple_page_view.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/widgets/home_custom_button.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/widgets/home_unit_item.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/widgets/home_unit_item_background.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/widgets/list_of_advertisments.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/widgets/list_of_invoices.dart';
import 'package:flutter_complete_project/tenant_flow/features/on_boarding/presentation/widgets/on_boarding_widgets_imports.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // controller
  PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  _buildBody() {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 16.sp, end: 16.sp, top: 19.sp),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProperties(),
            // if()
            Visibility(
                visible: getIt<HomeCubit>().units.isNotEmpty ||
                    getIt<HomeCubit>().units.length > 1,
                child: Column(
                  children: [
                    16.verticalSpace,
                    _buildIndicators(),
                  ],
                )),
            24.verticalSpace,
            Visibility(
                visible: getIt<HomeCubit>().units.isNotEmpty,
                child: CustomServices()),
            24.verticalSpace,
            Visibility(
                visible: getIt<HomeCubit>().units.isNotEmpty,
                child: AdvetisementsList()),
            24.verticalSpace,
            Visibility(
                visible: getIt<HomeCubit>().units.isNotEmpty,
                child: HomeInvoicesList()),
            100.verticalSpace,
          ],
        ),
      ),
    );
  }

  _buildProperties() {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is GetAllUnitsLoading ||
          current is GetAllUnitsSuccess ||
          current is GetAllUnitsError,
      builder: (context, state) {
        return getIt<HomeCubit>().units.isEmpty
            ? HomeUnitItemBackGround(
                child: Column(
                children: [
                  Text('عند إضافة عقار مستأجر سيظهر هنا',
                      style: getBoldStyle(
                          fontSize: 14.sp, color: ColorsManager.greyLight)),
                  16.verticalSpace,
                  HomeCustomButton(
                    text: 'إستكشف عروض الإيجار',
                    onTap: () {
                      Go.toNamed(
                        NamedRoutes.offers,
                      );
                    },
                  ),
                  16.verticalSpace,
                ],
              ))
            : Container(
                child: ExpandablePageView(
                pageController: _pageController,
                children: List.generate(
                    getIt<HomeCubit>().units.length,
                    (index) => HomeUnitItem(
                          unit: getIt<HomeCubit>().units[index],
                        )),
              ));
      },
    );
  }

  _buildIndicators() {
    return getIt<HomeCubit>().units.length == 1
        ? SizedBox.shrink()
        : Center(
            child: MyPageIndicator(
              boardController: _pageController,
              lenght: getIt<HomeCubit>().units.length,
            ),
          );
  }
}
