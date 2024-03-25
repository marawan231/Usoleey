
import '../../../../../core/network_service/api_result.dart';
import '../../../../../core/network_service/network_exceptions.dart';
import '../models/all_invoice_model.dart';
import '../web_service/owner_invoices_web_service.dart';

class OwnerInvoicesRepository {
  final OwnerInvoicesWebServices ownerInvoicesWebServices;

  OwnerInvoicesRepository(this.ownerInvoicesWebServices);

  Future<ApiResult<AllInvoiceModel>> getOwnerInvoices(
      {int page = 1, int limit = 25}) async {
    try {
      var response = await ownerInvoicesWebServices.getOwnerInvoices();
      return ApiResult.success(response.data!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
