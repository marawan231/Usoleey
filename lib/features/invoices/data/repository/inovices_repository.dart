import 'package:flutter_complete_project/features/invoices/data/models/invoices_model.dart';
import 'package:flutter_complete_project/features/invoices/data/web_services/invoices_web_services.dart';

import '../../../../../core/network_service/api_result.dart';
import '../../../../../core/network_service/network_exceptions.dart';

class InvoiceRepository {
  final InvoicesWebServices invoicesWebServices;

  InvoiceRepository(this.invoicesWebServices);

 //get all invoices
  Future<ApiResult<InvoicesModel>> getAllInvoices() async {
    try {
      var response = await invoicesWebServices.getAllInvoices();
      return ApiResult.success(response);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
