import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/network_service/network_exceptions.dart';
import 'package:flutter_complete_project/tenant_flow/features/invoices/data/models/invoices_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/invoices/data/repository/inovices_repository.dart';
import 'package:flutter_complete_project/tenant_flow/features/invoices/logic/invoices_state.dart';

class InvoicesCubit extends Cubit<InvoicesState> {
  InvoicesCubit(this.invoiceRepository) : super(const InvoicesState.idle());
  final InvoiceRepository invoiceRepository;

  List<Invoice> invoices = [];
  List<Invoice> selectedInvoices = [];
  List<Invoice> upcomingInvoices = [];
  //filterInvoicesByType
  void filterInvoicesByType(String type) {
    emit(const InvoicesState.filterInvoicesByTypeLoading());
    type == 'all'
        ? selectedInvoices = invoices
        : selectedInvoices =
            invoices.where((element) => element.type == type).toList();
    log(selectedInvoices.length.toString());
    log(invoices.length.toString());
    emit(InvoicesState.filterInvoicesByTypeSuccess(selectedInvoices));
  }

  void getAllInvoices() async {
    emit(const InvoicesState.getAllInvoicesLoading());
    var result = await invoiceRepository.getAllInvoices();

    result.when(
      success: (response) {
        invoices = response.data!.invoices!;
        selectedInvoices = response.data!.invoices!;
        // upcomingInvoices is the invoices that have a due date greater than today

        emit(InvoicesState.getAllInvoicesSuccess(response.data!.invoices!));
      },
      failure: (networkExceptions) {
        final error = DioExceptionType.getErrorMessage(networkExceptions);
        emit(InvoicesState.getAllInvoicesError(error));
      },
    );
  }
}
