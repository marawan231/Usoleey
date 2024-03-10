import 'package:flutter_complete_project/tenant_flow/features/home/data/models/units_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.idle() = Idle<T>;
  //get all units loading state
  const factory HomeState.getAllUnitsLoading() = GetAllUnitsLoading<T>;
  //get all units success state
  const factory HomeState.getAllUnitsSuccess(List<Units> response) =
      GetAllUnitsSuccess<T>;
  //get all units error state
  const factory HomeState.getAllUnitsError(String error) = GetAllUnitsError<T>;
  //change selected unit state loading
  const factory HomeState.changeSelectedUnitLoading() =
      ChangeSelectedUnitLoading<T>;
  //change selected unit state success
  const factory HomeState.changeSelectedUnitSuccess(Units unit) =
      ChangeSelectedUnitSuccess<T>;
  // reset all state loading
  const factory HomeState.resetAllLoading() = ResetAllLoading<T>;
  // reset all state success
  const factory HomeState.resetAllSuccess() = ResetAllSuccess<T>;
  //get all ads loading state
  const factory HomeState.getAdsLoading() = GetAdsLoading<T>;
  //get all ads success state
  const factory HomeState.getAdsSuccess(List<T> response) = GetAdsSuccess<T>;
  //get all ads error state
  const factory HomeState.getAdsError(String error) = GetAdsError<T>;
  //resetSelectedUnitLoading
  const factory HomeState.resetSelectedUnitLoading() =
      ResetSelectedUnitLoading<T>;
  //resetSelectedUnit
  const factory HomeState.resetSelectedUnit() = ResetSelectedUnit<T>;
  //changeBottomSheetSelectedViewLoading
  const factory HomeState.changeBottomSheetSelectedViewLoading(int index) =
      ChangeBottomSheetSelectedViewLoading<T>;
  //changeBottomSheetSelectedViewSuccess
  const factory HomeState.changeBottomSheetSelectedViewSuccess(int index) =
      ChangeBottomSheetSelectedViewSuccess<T>;
}
