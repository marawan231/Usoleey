part of 'owner_home_cubit.dart';

@freezed
class OwnerHomeState with _$OwnerHomeState {
  const factory OwnerHomeState(
      {@Default(RequestState.loading) RequestState getHomeStatsState,
      HomeModel? homeModel}) = _Initial;
}
