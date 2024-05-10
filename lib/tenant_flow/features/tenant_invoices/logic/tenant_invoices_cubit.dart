import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/enums/enums.dart';
import '../../../../property_owner_flow/features/unit_details/data/models/invoice_model.dart';
import '../data/models/get_invoices_query.dart';
import '../data/repository/tenant_inovices_repository.dart';

part 'tenant_invoices_cubit.freezed.dart';

part 'tenant_invoices_state.dart';

class TenantInvoicesCubit extends Cubit<TenantInvoicesState> {
  TenantInvoicesCubit(this.invoiceRepository) : super(const _Initial());
  final TenantInvoiceRepository invoiceRepository;

  // List<InvoiceModel> tenant_invoices = [];
  // List<InvoiceModel> selectedInvoices = [];
  // List<InvoiceModel> upcomingInvoices = [];
  //filterInvoicesByType
  // void filterInvoicesByType(String type) {
  //   emit(const InvoicesState.filterInvoicesByTypeLoading());
  //   type == 'all'
  //       ? selectedInvoices = tenant_invoices
  //       : selectedInvoices =
  //           tenant_invoices.where((element) => element.type == type).toList();
  //   log(selectedInvoices.length.toString());
  //   log(tenant_invoices.length.toString());
  //   emit(InvoicesState.filterInvoicesByTypeSuccess(selectedInvoices));
  // }

  // void getAllInvoices() async {
  //   emit(const InvoicesState.getAllInvoicesLoading());
  //   var result = await invoiceRepository.getTenantInvoices();
  //
  //   result.when(
  //     success: (response) {
  //       tenant_invoices = response.tenant_invoices!;
  //       selectedInvoices = response.tenant_invoices!;
  //       // upcomingInvoices is the tenant_invoices that have a due date greater than today
  //
  //       emit(InvoicesState.getAllInvoicesSuccess(response.tenant_invoices!));
  //     },
  //     failure: (networkExceptions) {
  //       final error = DioExceptionType.getErrorMessage(networkExceptions);
  //       emit(InvoicesState.getAllInvoicesError(error));
  //     },
  //   );
  // }

  int count = 0;

  Future<void> getTenantRentInvoices({bool firstTime = false}) async {
    if (firstTime) {
      emit(state.copyWith(
          page: 1, invoices: [], getTenantInvoicesState: RequestState.loading));
    }
    if (count != 0 && state.invoices.length >= count) {
      return;
    }

    GetInvoicesQueryModdel getMyTicketsQueryModel = GetInvoicesQueryModdel(
        page: state.page, type: state.invoiceType, limit: 25);

    final result = await invoiceRepository.getTenantInvoices(
        getInvoicesQueryModdel: getMyTicketsQueryModel);
    result.when(success: (invoiceModel) {
      print('--------------------${invoiceModel.invoices}');
      List<InvoiceModel> newList = List.from(state.invoices)
        ..addAll(invoiceModel.invoices ?? []);
      count = invoiceModel.pagination!.count!;
      emit(state.copyWith(
          invoices: newList,
          getTenantInvoicesState: RequestState.success,
          page: state.page + 1));
    }, failure: (failure) {
      emit(state.copyWith(getTenantInvoicesState: RequestState.error));
    });
  }

  void tabBarOnChange(int index) {
    String type = '';
    switch (index) {
      case 1:
        type = '';
      case 2:
        type = 'RENT';
      case 3:
        type = 'WATER';
      case 4:
        type = 'TICKET';
    }
    emit(state.copyWith(selectedTab: index, invoiceType: type));
    getTenantRentInvoices(firstTime: true);
  }
}
