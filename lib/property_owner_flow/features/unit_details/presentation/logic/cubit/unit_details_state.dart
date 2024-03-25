part of 'unit_details_cubit.dart';

@freezed
class UnitDetailsState with _$UnitDetailsState {
  const factory UnitDetailsState(
      {@Default(RequestState.loading) RequestState getUnitDetailsState,
      UnitDetailsModel? unitDetailsModel}) = _Initial;
}
