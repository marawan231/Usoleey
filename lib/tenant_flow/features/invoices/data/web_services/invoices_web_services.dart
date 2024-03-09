import 'package:dio/dio.dart';
import 'package:flutter_complete_project/tenant_flow/features/invoices/data/models/invoices_model.dart';
import 'package:retrofit/retrofit.dart';

part 'invoices_web_services.g.dart';

@RestApi()
abstract class InvoicesWebServices {
  factory InvoicesWebServices(Dio dio, {String baseUrl}) = _InvoicesWebServices;

  @GET("invoices")
  Future<InvoicesModel> getAllInvoices();
}
