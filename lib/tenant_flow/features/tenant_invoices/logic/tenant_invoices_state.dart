part of 'tenant_invoices_cubit.dart';

@freezed
class TenantInvoicesState with _$TenantInvoicesState {
  const factory TenantInvoicesState({
    @Default(RequestState.loading) RequestState getTenantInvoicesState,
    @Default([]) List<InvoiceModel> invoices,
    @Default(1) int page,
    @Default(1) int selectedTab,
    @Default('') String invoiceType,
  }) = _Initial;
}
