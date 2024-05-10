part of'home_cubit.dart';


@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState({
    @Default([]) List<Units> units,
    @Default([]) List<Ad> ads,
    @Default([]) List<InvoiceModel> invoices,
    @Default(RequestState.loading) RequestState getUnitsRequestState,
    @Default(RequestState.loading) getAdsRequestState,
    @Default(RequestState.loading) getNotificationCountRequestState,
    @Default(RequestState.loading) getInvoicesRequestState,
    @Default(0) bottomSheetSelected,
    @Default(0) notificationCount,
    Units? unitSelected,

  }) = _Initial;


}
