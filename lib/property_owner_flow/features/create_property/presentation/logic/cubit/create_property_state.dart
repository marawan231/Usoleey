part of 'create_property_cubit.dart';

@freezed
class CreatePropertyState with _$CreatePropertyState {
  const factory CreatePropertyState(
      {@Default(RequestState.initial) RequestState createPropertyState}) = _Initial;
}

