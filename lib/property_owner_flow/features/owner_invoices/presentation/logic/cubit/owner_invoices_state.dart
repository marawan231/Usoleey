part of 'owner_invoices_cubit.dart';

@freezed
class OwnerInvoicesState with _$OwnerInvoicesState {
  const factory OwnerInvoicesState({
    @Default(RequestState.loading) RequestState getInvoicesState,
    @Default([]) List<InvoiceModel> invoices,
    @Default(1) int page,
    @Default(1) int selectedTab,
  }) = _Initial;
}
