import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/network_service/base_response.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/data/models/ads_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../property_owner_flow/features/owner_invoices/data/models/all_invoice_model.dart';
import '../models/units_model.dart';

part 'home_web_service.g.dart';

@RestApi()
abstract class HomeWebServices {
  factory HomeWebServices(Dio dio, {String baseUrl}) = _HomeWebServices;

  @GET("units")
  Future<UnitsModel> getUnits();
  //get all TicketsStatusModel

  //get all ads
  @GET("ads")
  Future<AdsModel> getAds();

  @GET("notifications/count")
  Future<BaseResponse<dynamic>> getNotificationCount();

  @GET("invoices")
  Future<BaseResponse<AllInvoiceModel>> getNextInvoices();
}
