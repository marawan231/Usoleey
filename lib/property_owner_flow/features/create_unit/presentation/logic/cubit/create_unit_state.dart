part of 'create_unit_cubit.dart';

@freezed
class CreateUnitState with _$CreateUnitState {
  const factory CreateUnitState(
      {@Default(RequestState.initial) RequestState createUnitState,
      @Default(false) bool lounge,
      @Default(RequestState.loading) RequestState getMyPropertiesState,
      @Default([]) List<Property> properties,
      Property? property,
      @Default(1) int page,
      File? unitImage,
      @Default(false) bool kitchen}) = _Initial;
}
