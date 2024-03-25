import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/network_service/base_response.dart';
import 'package:retrofit/retrofit.dart';

import '../models/all_invoice_model.dart';

part 'owner_invoices_web_service.g.dart';

@RestApi()
abstract class OwnerInvoicesWebServices {
  factory OwnerInvoicesWebServices(Dio dio, {String baseUrl}) =
  _OwnerInvoicesWebServices;

  @GET("invoices")
  Future<BaseResponse<AllInvoiceModel>> getOwnerInvoices();
}
