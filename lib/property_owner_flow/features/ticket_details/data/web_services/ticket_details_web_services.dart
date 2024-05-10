import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_complete_project/property_owner_flow/features/ticket_details/data/models/rate_request_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/network_service/base_response.dart';
import '../models/ticket_details_model.dart';

part 'ticket_details_web_services.g.dart';

@RestApi()
abstract class TicketDetailsWebServices {
  factory TicketDetailsWebServices(Dio dio, {String baseUrl}) =
      _TicketDetailsWebServices;

  @GET("tickets/{id}")
  Future<BaseResponse<TicketDetailsModel>> getTicketDetails(
      @Path("id") String id);

  @PUT("tickets/{id}")
  Future<BaseResponse<TicketDetailsModel>> updateTicket(
      @Path("id") String id, @Field('status') String status);

  @POST("tenant_invoices")
  @FormUrlEncoded()
  Future<BaseResponse> createInvoice(
      @Part() File file,
      @Part() String dueDate, // Default value
      @Part() String type,
      @Part() int unitId,
      @Part() int ticketId);

  @POST("rates")
  Future<BaseResponse> rate(
      {@Body() required RateRequestModel rateRequestModel});

// @PUT("tenant_invoices")
// Future<BaseResponse> createInvoice(@Field() String status);
}
