import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/helpers/cache_helper.dart';
import 'package:flutter_complete_project/core/network_service/dio_setup.dart';
import 'package:flutter_complete_project/core/network_service/network_constants.dart';
import 'package:flutter_complete_project/property_owner_flow/features/create_property/data/repository/create_property_repository.dart';
import 'package:flutter_complete_project/property_owner_flow/features/create_property/presentation/logic/cubit/create_property_cubit.dart';
import 'package:flutter_complete_project/property_owner_flow/features/my_real_estate/data/web_service/my_real_estate_web_service.dart';
import 'package:flutter_complete_project/property_owner_flow/features/my_real_estate/presentation/logic/cubit/my_real_estate_cubit.dart';
import 'package:flutter_complete_project/property_owner_flow/features/owner_home/data/repository/owner_home_repository.dart';
import 'package:flutter_complete_project/property_owner_flow/features/owner_home/data/web_service/owner_home_web_service.dart';
import 'package:flutter_complete_project/property_owner_flow/features/owner_home/presentation/logic/cubit/owner_home_cubit.dart';
import 'package:flutter_complete_project/property_owner_flow/features/unit_details/data/web_service/unit_details_web_service.dart';
import 'package:flutter_complete_project/property_owner_flow/features/unit_details/presentation/logic/cubit/unit_details_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/choose_language/logic/cubit/choose_language_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/data/repository/home_repository.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/data/web_service/home_web_service.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/invoices/data/repository/inovices_repository.dart';
import 'package:flutter_complete_project/tenant_flow/features/invoices/data/web_services/invoices_web_services.dart';
import 'package:flutter_complete_project/tenant_flow/features/invoices/logic/invoices_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/data/repository/auth_repository.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/data/web_service/auth_web_service.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/logic/cubit/auth_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/more/data/repository/more_repository.dart';
import 'package:flutter_complete_project/tenant_flow/features/more/data/web_services/more_web_services.dart';
import 'package:flutter_complete_project/tenant_flow/features/more/logic/more_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/on_boarding/logic/cubit/onboarding_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/data/repository/tickets_repository.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/data/web_service/tickets_web_service.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/logic/cubit/tickets_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../property_owner_flow/features/create_property/data/web_service/create_property_web_service.dart';
import '../../property_owner_flow/features/create_unit/data/repository/create_unit_repository.dart';
import '../../property_owner_flow/features/create_unit/data/web_service/create_unit_web_service.dart';
import '../../property_owner_flow/features/create_unit/presentation/logic/cubit/create_unit_cubit.dart';
import '../../property_owner_flow/features/my_real_estate/data/repository/my_real_estate_repository.dart';
import '../../property_owner_flow/features/owner_invoices/data/repository/owner_invoices_repository.dart';
import '../../property_owner_flow/features/owner_invoices/data/web_service/owner_invoices_web_service.dart';
import '../../property_owner_flow/features/owner_invoices/presentation/logic/cubit/owner_invoices_cubit.dart';
import '../../property_owner_flow/features/owner_tickets/data/repository/owner_tickets_repository.dart';
import '../../property_owner_flow/features/owner_tickets/data/web_service/owner_tickets_web_service.dart';
import '../../property_owner_flow/features/owner_tickets/presentation/logic/cubit/owner_tickets_cubit.dart';
import '../../property_owner_flow/features/property_details/data/repository/property_details_repository.dart';
import '../../property_owner_flow/features/property_details/data/web_service/property_details_web_service.dart';
import '../../property_owner_flow/features/property_details/presentation/logic/cubit/property_details_cubit.dart';
import '../../property_owner_flow/features/unit_details/data/repository/unit_details_repository.dart';
import '../../property_owner_flow/features/update_unit/data/repository/update_unit_repository.dart';
import '../../property_owner_flow/features/update_unit/data/web_service/update_unit_web_services.dart';
import '../../property_owner_flow/features/update_unit/presentation/logic/cubit/update_unit_cubit.dart';
import '../shared_cubits/user_cubit/user_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Cache Helper
  getIt.registerLazySingleton<CacheHelper>(() => CacheHelper());
  // choose language cubit
  getIt.registerLazySingleton<ChooseLanguageCubit>(() => ChooseLanguageCubit());

  // user cubit
  getIt.registerLazySingleton<UserCubit>(() => UserCubit());

  //on boarding
  getIt.registerLazySingleton<OnboardingCubit>(() => OnboardingCubit());
  // AuthCubit
  getIt.registerLazySingleton<AuthCubit>(
      () => AuthCubit(getIt<AuthRepository>()));
  // AuthRepository
  getIt.registerLazySingleton<AuthRepository>(
      () => AuthRepository(getIt<AuthWebService>()));
  // AuthWebService
  getIt.registerLazySingleton<AuthWebService>(
      () => AuthWebService(getIt<Dio>(), baseUrl: NetworkConstants.baseUrl));
  //home web_service services
  getIt.registerLazySingleton<HomeWebServices>(
      () => HomeWebServices(getIt<Dio>(), baseUrl: NetworkConstants.baseUrl));
  // home repository
  getIt.registerLazySingleton<HomeRepository>(
      () => HomeRepository(homeWebServices: getIt<HomeWebServices>()));
  // HomeCubit
  getIt.registerLazySingleton<HomeCubit>(
      () => HomeCubit(getIt<HomeRepository>()));
  // TicketsCubit
  getIt.registerLazySingleton<TicketsCubit>(
      () => TicketsCubit(getIt<TicketsRepository>()));
  // TicketsRepository
  getIt.registerLazySingleton<TicketsRepository>(
      () => TicketsRepository(ticketsWebService: getIt<TicketsWebService>()));
  // TicketsWebService
  getIt.registerLazySingleton<TicketsWebService>(() =>
      TicketsWebService(getIt<Dio>(), baseUrl: NetworkConstants.mockBaseUrl));
  //Invoices Web Services
  getIt.registerLazySingleton<InvoicesWebServices>(() =>
      InvoicesWebServices(getIt<Dio>(), baseUrl: NetworkConstants.baseUrl));
  // Invoices Repository
  getIt.registerLazySingleton<InvoiceRepository>(
      () => InvoiceRepository(getIt<InvoicesWebServices>()));
  // InvoiceCubit
  getIt.registerLazySingleton<InvoicesCubit>(
      () => InvoicesCubit(getIt<InvoiceRepository>()));

  //more web_service services
  getIt.registerLazySingleton<MoreWebServices>(
      () => MoreWebServices(getIt<Dio>(), baseUrl: NetworkConstants.baseUrl));
  // More Repository
  getIt.registerLazySingleton<MoreRepository>(
      () => MoreRepository(moreWebServices: getIt()));

//More cubit
  getIt.registerLazySingleton<MoreCubit>(
      () => MoreCubit(getIt<MoreRepository>()));

  // Dio & ApiService
  getIt.registerLazySingleton<Dio>(() => setupDio());

  // My Real Estate Web Service
  getIt.registerLazySingleton<MyRealEstateWebServices>(() =>
      MyRealEstateWebServices(getIt<Dio>(), baseUrl: NetworkConstants.baseUrl));

  // My Real Estate Repository
  getIt.registerLazySingleton<MyRealEstateRepository>(
      () => MyRealEstateRepository(getIt<MyRealEstateWebServices>()));

  // My Real Estate Cubit
  getIt.registerLazySingleton<MyRealEstateCubit>(
      () => MyRealEstateCubit(getIt<MyRealEstateRepository>()));

  // Create Property Web Service
  getIt.registerLazySingleton<CreatePropertyWebServices>(() =>
      CreatePropertyWebServices(getIt<Dio>(),
          baseUrl: NetworkConstants.baseUrl));

  // Create Property Repository
  getIt.registerLazySingleton<CreatePropertyRepository>(
      () => CreatePropertyRepository(getIt<CreatePropertyWebServices>()));

  // Create Property Cubit
  getIt.registerLazySingleton<CreatePropertyCubit>(
      () => CreatePropertyCubit(getIt<CreatePropertyRepository>()));

  // Create Unit Web Service
  getIt.registerLazySingleton<CreateUnitWebServices>(() =>
      CreateUnitWebServices(getIt<Dio>(), baseUrl: NetworkConstants.baseUrl));

  // Create Unit Repository
  getIt.registerLazySingleton<CreateUnitRepository>(
      () => CreateUnitRepository(getIt<CreateUnitWebServices>()));

  // Create Unit Cubit
  getIt.registerLazySingleton<CreateUnitCubit>(
      () => CreateUnitCubit(getIt<CreateUnitRepository>()));

  // PropertyDetails Web Service
  getIt.registerLazySingleton<PropertyDetailsWebService>(() =>
      PropertyDetailsWebService(getIt<Dio>(),
          baseUrl: NetworkConstants.baseUrl));

  // PropertyDetails Repository
  getIt.registerLazySingleton<PropertyDetailsRepository>(
      () => PropertyDetailsRepository(getIt<PropertyDetailsWebService>()));

  //PropertyDetails Cubit
  getIt.registerLazySingleton<PropertyDetailsCubit>(
      () => PropertyDetailsCubit(getIt<PropertyDetailsRepository>()));

  // OwnerHome Web Service
  getIt.registerLazySingleton<OwnerHomeWebService>(() =>
      OwnerHomeWebService(getIt<Dio>(), baseUrl: NetworkConstants.baseUrl));

  // OwnerHome Repository
  getIt.registerLazySingleton<OwnerHomeRepository>(
      () => OwnerHomeRepository(getIt<OwnerHomeWebService>()));

  //OwnerHome Cubit
  getIt.registerLazySingleton<OwnerHomeCubit>(
      () => OwnerHomeCubit(getIt<OwnerHomeRepository>()));

  // UnitDetailsWebService
  getIt.registerLazySingleton<UnitDetailsWebService>(() =>
      UnitDetailsWebService(getIt<Dio>(), baseUrl: NetworkConstants.baseUrl));

  // UnitDetailsRepository
  getIt.registerLazySingleton<UnitDetailsRepository>(
      () => UnitDetailsRepository(getIt<UnitDetailsWebService>()));

  //OwnerHome Cubit
  getIt.registerLazySingleton<UnitDetailsCubit>(
      () => UnitDetailsCubit(getIt<UnitDetailsRepository>()));

  // OwnerInvoicesWebService
  getIt.registerLazySingleton<OwnerInvoicesWebServices>(() =>
      OwnerInvoicesWebServices(getIt<Dio>(),
          baseUrl: NetworkConstants.baseUrl));

  // OwnerInvoicesRepository
  getIt.registerLazySingleton<OwnerInvoicesRepository>(
      () => OwnerInvoicesRepository(getIt<OwnerInvoicesWebServices>()));

  //OwnerInvices Cubit
  getIt.registerLazySingleton<OwnerInvoicesCubit>(
      () => OwnerInvoicesCubit(getIt<OwnerInvoicesRepository>()));

  // OwnerTicketsWebService
  getIt.registerLazySingleton<OwnerTicketsWebServices>(() =>
      OwnerTicketsWebServices(getIt<Dio>(), baseUrl: NetworkConstants.baseUrl));

  // OwnerTicketsRepository
  getIt.registerLazySingleton<OwnerTicketsRepository>(
      () => OwnerTicketsRepository(getIt<OwnerTicketsWebServices>()));

  //OwnerInvices Cubit
  getIt.registerLazySingleton<OwnerTicketsCubit>(
      () => OwnerTicketsCubit(getIt<OwnerTicketsRepository>()));

  // UpdateUnitWebService
  getIt.registerLazySingleton<UpdateUnitWebServices>(() =>
      UpdateUnitWebServices(getIt<Dio>(), baseUrl: NetworkConstants.baseUrl));

  // UpdateUnitRepository
  getIt.registerLazySingleton<UpdateUnitRepository>(
      () => UpdateUnitRepository(getIt<UpdateUnitWebServices>()));

  //OwnerInvices Cubit
  getIt.registerLazySingleton<UpdateUnitCubit>(
      () => UpdateUnitCubit(getIt<UpdateUnitRepository>()));
}
