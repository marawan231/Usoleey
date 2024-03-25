part of 'my_real_estate_cubit.dart';

@freezed
class MyRealEstateState with _$MyRealEstateState {
  const factory MyRealEstateState({
    @Default(RequestState.loading) RequestState getMyPropertiesState,
    @Default([]) List<Property> properties,
    @Default(1) int propertyPaginationPage,
    @Default(RequestState.loading) RequestState getMyUnitsState,
    @Default([]) List<Unit> units,
    @Default(1) int unitPaginationPage,
  }) = _Initial;
}
