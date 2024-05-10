import '../../../../../../core/network_service/api_result.dart';
import '../../../../../../core/network_service/network_exceptions.dart';
import '../../../../../property_owner_flow/features/owner_invoices/data/models/all_invoice_model.dart';
import '../models/get_invoices_query.dart';
import '../web_services/tenant_invoices_web_services.dart';

class TenantInvoiceRepository {
  final TenantInvoicesWebServices tenantInvoicesWebServices;

  TenantInvoiceRepository(this.tenantInvoicesWebServices);

  Future<ApiResult<AllInvoiceModel>> getTenantInvoices(
      {required GetInvoicesQueryModdel getInvoicesQueryModdel}) async {
    Map<String, dynamic> queries = getInvoicesQueryModdel.toJson();
    queries.removeWhere((key, value) => value == null || value == '');
    try {
      var response = await tenantInvoicesWebServices.getTenantInvoices(queries);
      return ApiResult.success(response.data!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
