part of 'update_unit_cubit.dart';

@freezed
class UpdateUnitState with _$UpdateUnitState {
  const factory UpdateUnitState({
    @Default(RequestState.initial) RequestState updateUnitState,
    @Default(0) int roomsCount,
    @Default(0) int conditionersCount,
    @Default(0) int bathroomsCount,
    @Default(false) bool nameEnabled,
    @Default(false) bool rentEnabled,
    @Default(false) bool dateEnabled,
    @Default(false) bool spaceEnabled,
    @Default(false) bool electricityAccountEnabled,
    @Default(false) bool lounge,
    @Default(false) bool kitchen,
    int? propertyId,
    PropertyModel? property,
    @Default('') String unitImage,
    @Default(RequestState.initial) RequestState updateImageState,
    @Default(RequestState.initial) RequestState updateNameState,
    @Default(RequestState.initial) RequestState updateRentState,
    @Default(RequestState.initial) RequestState updateRentDataState,
    @Default(RequestState.initial) RequestState updateSpaceState,
    @Default(RequestState.initial) RequestState updateElectricityState,
    @Default(RequestState.initial) RequestState updateRoomsState,
    @Default(RequestState.initial) RequestState updateBathRoomsState,
    @Default(RequestState.initial) RequestState updateConditionersState,
    @Default(RequestState.initial) RequestState updatePropertyIdState,
    @Default(RequestState.loading) RequestState getMyPropertiesState,
    @Default([]) List<PropertyModel> properties,
    @Default(1) int page,
    PropertyModel? selectedProperty,
  }) = _Initial;
}
