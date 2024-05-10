import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/enums/enums.dart';
import 'package:flutter_complete_project/core/network_service/network_exceptions.dart';
import 'package:flutter_complete_project/property_owner_flow/features/unit_details/data/models/invoice_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/data/models/ads_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/data/models/units_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/data/repository/home_repository.dart';
import 'package:flutter_complete_project/tenant_flow/features/tenant_home_layout/presentation/logic/cubit/tenant_home_layout_cubit.dart';
import 'package:flutter_complete_project/tenant_flow/features/tenant_tickets/presentation/logic/cubit/tenant_tickets_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';

import '../../../../../../core/di/dependency_injection.dart';

part 'home_cubit.freezed.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepository) : super(_Initial());
  final HomeRepository homeRepository;

  void changeSelectedUnit(Units unit) {
    selectedUnit = unit;
    emit(state.copyWith(unitSelected: unit));
  }

  Units? selectedUnit;

//change Bottom sheet selected view
  void changeBottomSheetSelectedView(int index) {
    emit(state.copyWith(bottomSheetSelected: index));
  }

  void resetAll() {
    getIt<TenantTicketsCubit>().selectTicket(null);
    getIt<TenantTicketsCubit>().resetAll();
    // getIt<TenantTicketsCubit>().imagesFile = [];

    emit(state.copyWith(bottomSheetSelected: 0, unitSelected: null));
  }

  Future<void> getAllUnits() async {
    emit(state.copyWith(getUnitsRequestState: RequestState.loading));

    var result = await homeRepository.getAllUnits();

    result.when(
      success: (response) {
        emit(state.copyWith(
            units: response.data!.units!,
            getUnitsRequestState: RequestState.success));
      },
      failure: (networkExceptions) {
        emit(state.copyWith(getUnitsRequestState: RequestState.error));
      },
    );
  }

  //get all ads
  void getAds() async {
    emit(state.copyWith(getAdsRequestState: RequestState.loading));

    var result = await homeRepository.getAds();

    result.when(
      success: (response) {
        emit(state.copyWith(
            ads: response.data!, getAdsRequestState: RequestState.success));
      },
      failure: (networkExceptions) {
        final error = DioExceptionType.getErrorMessage(networkExceptions);
        emit(state.copyWith(getAdsRequestState: RequestState.error));
      },
    );
  }

  initBottomSheetSelectedView() {
    if (state.units.isEmpty) {
      changeBottomSheetSelectedView(1);
    } else {
      changeBottomSheetSelectedView(0);
    }
  }

  Future<void> getNotificationCount() async {
    emit(
        state.copyWith(getNotificationCountRequestState: RequestState.loading));
    var result = await homeRepository.getNotificationCount();

    result.when(
      success: (response) {
        emit(state.copyWith(
            notificationCount: response,
            getNotificationCountRequestState: RequestState.success));
      },
      failure: (networkExceptions) {},
    );
  }

  Future<void> getNextInvoices() async {
    emit(state.copyWith(getInvoicesRequestState: RequestState.loading));
    var result = await homeRepository.getNextInvoices();
    result.when(
      success: (response) {
        emit(state.copyWith(
            invoices: response.length > 4 ? response.sublist(0, 4) : response,
            getInvoicesRequestState: RequestState.success));
      },
      failure: (networkExceptions) {
        emit(state.copyWith(getInvoicesRequestState: RequestState.error));
      },
    );
  }

  void updateNotificationCount(int count) {
    emit(state.copyWith(notificationCount: count));
  }
}
