import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/network_service/base_response.dart';
import '../../../../../property_owner_flow/features/owner_invoices/data/models/all_invoice_model.dart';

part 'tenant_invoices_web_services.g.dart';

@RestApi()
abstract class TenantInvoicesWebServices {
  factory TenantInvoicesWebServices(Dio dio, {String baseUrl}) = _TenantInvoicesWebServices;

  @GET("invoices")
  Future<BaseResponse<AllInvoiceModel>> getTenantInvoices(@Queries() Map<String, dynamic> queries);
}

