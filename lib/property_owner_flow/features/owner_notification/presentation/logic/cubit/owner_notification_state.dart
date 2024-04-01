part of 'owner_notification_cubit.dart';

@freezed
class OwnerNotificationState with _$OwnerNotificationState {
  const factory OwnerNotificationState({
    @Default(RequestState.initial) RequestState getOwnerNotificationState,
    @Default([]) List<OwnerNotificationItem> notifications,
    @Default(1) int page,
  }) = _Initial;
}
