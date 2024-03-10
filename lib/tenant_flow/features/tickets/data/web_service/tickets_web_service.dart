import 'package:dio/dio.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/data/models/create_ticket_request_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/data/models/create_ticket_response_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/data/models/tickets_model.dart';
import 'package:retrofit/retrofit.dart';

part 'tickets_web_service.g.dart';

@RestApi()
abstract class TicketsWebService {
  factory TicketsWebService(Dio dio, {String baseUrl}) = _TicketsWebService;

  //get all TicketsStatusModel
  // @GET("getAllTicketsStatus")
  // Future<TicketsStatusModel> getTicketsStatus();
  // //get all ticke types
  // @GET("getAllTicketsTypes")
  // Future<TicketsStatusModel> getTicketTypes();
  //get all tickets
  @GET("tickets")
  Future<TicketsModel> getAllTickets();

  //create ticket
  @POST("tickets")
  Future<CreateTicketResponseModel> createTicket(@Body() CreateTicketRequestModel body);
}
