import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_complete_project/property_owner_flow/features/ticket_details/data/models/ticket_details_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/network_service/base_response.dart';
import '../../../../../core/shared_models/owner_unit_model.dart';
import '../../../../../core/shared_models/all_tickets_model.dart';

part 'tenant_tickets_web_service.g.dart';

@RestApi()
abstract class TenantTicketsWebService {
  factory TenantTicketsWebService(Dio dio, {String baseUrl}) =
      _TenantTicketsWebService;

  @GET("tickets")
  Future<BaseResponse<AllTicketsModel>> getTenantTickets(
      @Queries() Map<String, dynamic> queries);

  @GET("units")
  Future<BaseResponse<OwnerUnitModel>> getMyUnits();

  // e ticket
  @POST("tickets")
  @MultiPart()
  Future<BaseResponse<TicketDetailsModel>> createTicket(
    @Part() List<File> images,
    @Part() String description,
    @Part() String type,
    @Part() int unitId,
  );
}
