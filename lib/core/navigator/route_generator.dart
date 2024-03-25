import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/property_owner_flow/features/create_unit/presentation/logic/cubit/create_unit_cubit.dart';
import 'package:flutter_complete_project/property_owner_flow/features/create_unit/presentation/screens/create_unit_screens_imports.dart';
import 'package:flutter_complete_project/property_owner_flow/features/owner_home_layout/presentation/screens/owner_home_layout_screens_imports.dart';
import 'package:flutter_complete_project/property_owner_flow/features/owner_invoices/presentation/screens/owner_invoices_screens_imports.dart';
import 'package:flutter_complete_project/property_owner_flow/features/property_details/presentation/screens/owner_property_details_screens_imports.dart';
import 'package:flutter_complete_project/property_owner_flow/features/unit_details/presentation/screens/unit_details_screens_imports.dart';
import 'package:flutter_complete_project/property_owner_flow/features/update_unit/presentation/screens/update_unit_screens_imports.dart';
import 'package:flutter_complete_project/tenant_flow/features/account_info/presentation/screens/account_info_view.dart';
import 'package:flutter_complete_project/tenant_flow/features/choose_language/logic/cubit/choose_language_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/choose_language/presentation/screen/choose_app_language_view.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/screens/home_screen.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/screens/layout_view.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/screens/unit_details_view.dart';
import 'package:flutter_complete_project/tenant_flow/features/invoices/logic/invoices_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/logic/cubit/auth_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/presentation/screens/login_view.dart';
import 'package:flutter_complete_project/tenant_flow/features/more/logic/more_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/notifications/presentation/screens/notifications_view.dart';
import 'package:flutter_complete_project/tenant_flow/features/offers/presentation/screens/offers_view.dart';
import 'package:flutter_complete_project/tenant_flow/features/on_boarding/logic/cubit/onboarding_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/on_boarding/presentation/views/on_boarding_views_imports.dart';
import 'package:flutter_complete_project/tenant_flow/features/splash/presentation/screen/splash_screen.dart';
import 'package:flutter_complete_project/tenant_flow/features/terms_and_support/presentation/screens/about_app_view.dart';
import 'package:flutter_complete_project/tenant_flow/features/terms_and_support/presentation/screens/help_and_support_view.dart';
import 'package:flutter_complete_project/tenant_flow/features/terms_and_support/presentation/screens/terms_and_condition_view.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/logic/cubit/tickets_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/screens/tickets_details_view.dart';

import '../../property_owner_flow/features/owner_tickets/presentation/screens/owner_tickets_screens_imports.dart';
import 'named_routes.dart';
import 'page_router/imports_page_router_builder.dart';

class RouterGenerator {
  //choose language cubit
  static late ChooseLanguageCubit chooseLanguageCubit;

  //on boarding cubit
  static late OnboardingCubit onboardingCubit;

  //auth cubit
  static late AuthCubit authCubit;

  //home cubit
  static late HomeCubit homeCubit;

  //tickets cubit
  static late TicketsCubit ticketsCubit;

  // owner_invoices cubit
  static late InvoicesCubit invoicesCubit;

  //more cubit
  static late MoreCubit moreCubit;
  static late CreateUnitCubit createUnitCubit;

  RouterGenerator() {
    chooseLanguageCubit = getIt<ChooseLanguageCubit>();
    onboardingCubit = getIt<OnboardingCubit>();
    authCubit = getIt<AuthCubit>();
    homeCubit = getIt<HomeCubit>();
    ticketsCubit = getIt<TicketsCubit>();
    invoicesCubit = getIt<InvoicesCubit>();
    moreCubit = getIt<MoreCubit>();
    createUnitCubit = getIt<CreateUnitCubit>();
  }

  static final PageRouterBuilder _pageRouter = PageRouterBuilder();

  Route? getRoute(RouteSettings settings) {
    final namedRoute =
        NamedRoutes.values.firstWhere((e) => e.routeName == settings.name);
    switch (namedRoute) {
      case NamedRoutes.splash:
        return _pageRouter.build(const SplashView(), settings: settings);
      case NamedRoutes.chooseAppLanguage:
        return _pageRouter.build(
            BlocProvider.value(
              value: chooseLanguageCubit,
              child: ChooseAppLanguageView(),
            ),
            settings: settings);
      case NamedRoutes.onBoarding:
        return _pageRouter.build(
            BlocProvider.value(
              value: onboardingCubit,
              child: OnBoardingView(),
            ),
            settings: settings);
      //login
      case NamedRoutes.login:
        return _pageRouter.build(
            BlocProvider.value(
              value: authCubit,
              child: LoginView(),
            ),
            settings: settings);
      //layout
      case NamedRoutes.layout:
        return _pageRouter.build(const LayoutView(), settings: settings);
      //home
      case NamedRoutes.home:
        return _pageRouter.build(const HomeScreen(), settings: settings);
      //notifications
      case NamedRoutes.notifications:
        return _pageRouter.build(const NotificationsView(), settings: settings);
      //account info
      case NamedRoutes.accountInfo:
        return _pageRouter.build(const AccountInfoView(), settings: settings);
      //offers
      case NamedRoutes.offers:
        return _pageRouter.build(
            BlocProvider.value(
              value: homeCubit,
              child: OffersView(),
            ),
            settings: settings);
      //about app
      case NamedRoutes.aboutApp:
        return _pageRouter.build(const AboutAppView(), settings: settings);
      //terms and conditions
      case NamedRoutes.termsAndConditions:
        return _pageRouter.build(const TermsAndConditionView(),
            settings: settings);
      //help and support
      case NamedRoutes.helpAndSupport:
        return _pageRouter.build(const HelpAndSupportView(),
            settings: settings);
      //ticket details
      case NamedRoutes.ticketDetails:
        return _pageRouter.build(const TicketDetailsView(), settings: settings);
      case NamedRoutes.createUnit:
        return _pageRouter.build(
            BlocProvider.value(
              value: createUnitCubit,
              child: CreateUnitScreen(),
            ),
            settings: settings);
      //propertyDetails
      case NamedRoutes.propertyDetails:
        final arg = settings.arguments as Map<String, dynamic>;
        final unit = arg['unit'];
        return _pageRouter.build(UnitDetailsView(unit: unit),
            settings: settings);
      case NamedRoutes.ownerLayout:
        return _pageRouter.build(OwnerHomeLayoutScreen(), settings: settings);
      case NamedRoutes.ownerPropertyDetails:
        final arg = settings.arguments as OwnerPropertyDetailsScreen;
        return _pageRouter.build(OwnerPropertyDetailsScreen(id: arg.id),
            settings: settings);
      case NamedRoutes.ownerUnitDetails:
        final arg = settings.arguments as OwnerUnitDetailsScreen;
        return _pageRouter.build(OwnerUnitDetailsScreen(id: arg.id),
            settings: settings);
      case NamedRoutes.ownerInvoices:
        return _pageRouter.build(OwnerInvoicesScreen(), settings: settings);
      case NamedRoutes.ownerTikcets:
        return _pageRouter.build(OwnerTicketsScreen(), settings: settings);
      case NamedRoutes.updateUnit:
        final arg = settings.arguments as UpdateUnitScreen;
        return _pageRouter.build(
            UpdateUnitScreen(unitDetailsModel: arg.unitDetailsModel),
            settings: settings);
    }
  }
}
