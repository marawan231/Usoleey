// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoices_state.freezed.dart';

@freezed
class InvoicesState<T> with _$InvoicesState<T> {
  const factory InvoicesState.idle() = Idle<T>;
  const factory InvoicesState.getAllInvoicesLoading() =
      GetAllInvoicesLoading<T>;
  const factory InvoicesState.getAllInvoicesSuccess(List<T> invoices) =
      GetAllInvoicesSuccess<T>;
  const factory InvoicesState.getAllInvoicesError(String error) =
      GetAllInvoicesError<T>;
  //filterInvoicesByTypeLoading
  const factory InvoicesState.filterInvoicesByTypeLoading() =
      FilterInvoicesByTypeLoading<T>;
  const factory InvoicesState.filterInvoicesByTypeSuccess(List<T> invoices) =
      FilterInvoicesByTypeSuccess<T>;
}
