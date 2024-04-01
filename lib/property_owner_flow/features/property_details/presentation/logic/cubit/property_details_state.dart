part of 'property_details_cubit.dart';

@freezed
class PropertyDetailsState with _$PropertyDetailsState {
  const factory PropertyDetailsState(
      {PropertDetailsModel? propertDetailsModel,@Default(RequestState.initial) getProperyDetailsState}) = _Initial;
}
