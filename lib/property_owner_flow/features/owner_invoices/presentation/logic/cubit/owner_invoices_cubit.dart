import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/enums/enums.dart';
import '../../../../../../tenant_flow/features/invoices/data/repository/inovices_repository.dart';
import '../../../../unit_details/data/models/invoice_model.dart';
import '../../../data/repository/owner_invoices_repository.dart';

part 'owner_invoices_state.dart';

part 'owner_invoices_cubit.freezed.dart';

class OwnerInvoicesCubit extends Cubit<OwnerInvoicesState> {
  final OwnerInvoicesRepository ownerInvoicesRepository;

  OwnerInvoicesCubit(this.ownerInvoicesRepository) : super(const _Initial());

  int count = 0;

  Future<void> getInvoices() async {
    final result =
        await ownerInvoicesRepository.getOwnerInvoices(page: state.page);

    result.when(success: (invoiceModel) {
      List<InvoiceModel> newList = List.from(state.invoices)
        ..addAll(invoiceModel.invoices ?? []);
      count = invoiceModel.pagination!.count!;
      emit(state.copyWith(
          invoices: newList,
          getInvoicesState: RequestState.success,
          page: state.page + 1));
    }, failure: (failure) {
      emit(state.copyWith(getInvoicesState: RequestState.error));
    });
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
