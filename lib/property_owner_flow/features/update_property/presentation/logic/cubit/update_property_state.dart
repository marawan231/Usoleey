part of 'update_property_cubit.dart';

@freezed
class UpdatePropertyState with _$UpdatePropertyState {
  const factory UpdatePropertyState({
    @Default(RequestState.initial) RequestState updateImageState,
    @Default(RequestState.initial) RequestState updateNameState,
    @Default(RequestState.initial) RequestState updateAddressState,
    @Default(RequestState.initial) RequestState updateStreetState,
    @Default(RequestState.initial) RequestState updateDistrictState,
    @Default(RequestState.initial) RequestState updateCityState,
    @Default(RequestState.initial) RequestState updateUnitsCountState,
    @Default(RequestState.initial) RequestState updateInstrumentNumberState,
    @Default(RequestState.initial) RequestState updateBlockNumberState,
    @Default(RequestState.initial) RequestState updatePostalCodeState,

    @Default(false) bool nameEnabled,
    @Default(false) bool addressEnabled,
    @Default(false) bool streetEnabled,
    @Default(false) bool districtEnabled,
    @Default(false) bool cityEnabled,
    @Default(false) bool unitsCountEnabled,
    @Default(false) bool instrumentNumberEnabled,
    @Default(false) bool blockNumberEnabled,
    @Default(false) bool postalCodeEnabled,

    @Default('')String? propertyImage
  }) = _Initial;
}
