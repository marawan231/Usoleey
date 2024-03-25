import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/network_service/base_response.dart';
import 'package:flutter_complete_project/property_owner_flow/features/owner_tickets/data/models/all_tickets_model.dart';
import 'package:retrofit/retrofit.dart';


part 'owner_tickets_web_service.g.dart';

@RestApi()
abstract class OwnerTicketsWebServices {
  factory OwnerTicketsWebServices(Dio dio, {String baseUrl}) =
  _OwnerTicketsWebServices;

  @GET("tickets")
  Future<BaseResponse<AllTicketsModel>> getOwnerTickets();
}
