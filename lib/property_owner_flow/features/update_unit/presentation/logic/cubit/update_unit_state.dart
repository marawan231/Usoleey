part of 'update_unit_cubit.dart';

@freezed
class UpdateUnitState with _$UpdateUnitState {
  const factory UpdateUnitState({
    @Default(RequestState.initial) RequestState updateUnitState,
    @Default(0) int roomsCount,
    @Default(0) int conditionersCount,
    @Default(0) int bathroomsCount,
  }) = _Initial;
}
