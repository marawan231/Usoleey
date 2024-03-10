import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/network_service/network_exceptions.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/data/models/ads_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/data/models/units_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/data/repository/home_repository.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/presentation/logic/cubit/home_state.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/presentation/logic/cubit/tickets_cubit.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepository) : super(const HomeState.idle());
  final HomeRepository homeRepository;

  List<Units> units = [];
  //list of ads
  List<Ad> ads = [];
  //selected unit
  Units? selectedUnit;
  int bottomSheetSelectedView = 0;

  void changeSelectedUnit(Units unit) {
    emit(const HomeState.changeSelectedUnitLoading());
    selectedUnit = unit;
    emit(HomeState.changeSelectedUnitSuccess(unit));
  }

//change Bottom sheet selected view
  void changeBottomSheetSelectedView(int index) {
    emit(HomeState.changeBottomSheetSelectedViewLoading(index));
    bottomSheetSelectedView = index;
    emit(HomeState.changeBottomSheetSelectedViewSuccess(index));
  }

  void resetSelectedUnit() {
    emit(const HomeState.resetSelectedUnitLoading());
    selectedUnit = null;

    emit(const HomeState.resetSelectedUnit());
  }

  void resetAll() {
    emit(const HomeState.resetAllLoading());

    selectedUnit = null;
    bottomSheetSelectedView = 0;
    getIt<TicketsCubit>().resetAll();
    emit(const HomeState.resetAllSuccess());
  }

  Future<void> getAllUnits() async {
    emit(const HomeState.getAllUnitsLoading());
    var result = await homeRepository.getAllUnits();

    result.when(
      success: (response) {
        // inspect(response.data!.units);
        units = response.data!.units!;
        emit(HomeState.getAllUnitsSuccess(response.data!.units!));
      },
      failure: (networkExceptions) {
        final error = DioExceptionType.getErrorMessage(networkExceptions);
        emit(HomeState.getAllUnitsError(error));
      },
    );
  }

  //get all ads
  void getAds() async {
    emit(const HomeState.getAdsLoading());
    var result = await homeRepository.getAds();

    result.when(
      success: (response) {
        // inspect(response.data!.ads);
        ads = response.data!;
        emit(HomeState.getAdsSuccess(response.data!));
      },
      failure: (networkExceptions) {
        final error = DioExceptionType.getErrorMessage(networkExceptions);
        emit(HomeState.getAdsError(error));
      },
    );
  }
}
