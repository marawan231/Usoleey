part of 'more_cubit.dart';

@freezed
class MoreState<T> with _$MoreState<T> {
  const factory MoreState({
    @Default([]) List<ContactInfoModelData> contactsData,
    @Default(RequestState.loading) RequestState getContactsRequestState,
  }) = _Initial;
}
