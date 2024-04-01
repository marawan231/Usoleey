import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../unit_details/data/models/invoice_model.dart';
import '../../../data/repository/owner_invoices_repository.dart';

part 'owner_invoices_cubit.freezed.dart';
part 'owner_invoices_state.dart';

class OwnerInvoicesCubit extends Cubit<OwnerInvoicesState> {
  final OwnerInvoicesRepository ownerInvoicesRepository;

  OwnerInvoicesCubit(this.ownerInvoicesRepository) : super(const _Initial());

  void updateInvoices(List<InvoiceModel> invoices) {
    emit(state.copyWith(invoices: invoices));
  }

  List<InvoiceModel> filterInvoices(List<InvoiceModel> allInvoices) {
    List<InvoiceModel> filteredList = [];

    switch (state.selectedTab) {
      case 1:
        filteredList = allInvoices;
      case 2:
        filteredList =
            allInvoices.where((element) => element.type == 'RENT').toList();
      case 3:
        filteredList =
            allInvoices.where((element) => element.type == 'WATER').toList();
      case 4:
        filteredList =
            allInvoices.where((element) => element.type == 'TICKET').toList();
    }
    return filteredList;
  }

  void tabBarOnChange(int index) {
    emit(state.copyWith(selectedTab: index));
  }
}
