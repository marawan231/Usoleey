import 'package:dio/dio.dart';
import 'package:flutter_complete_project/features/tickets/data/models/tickets_model.dart';
import 'package:flutter_complete_project/features/tickets/data/models/tickets_status_model.dart';
import 'package:retrofit/retrofit.dart';

part 'tickets_web_service.g.dart';

@RestApi()
abstract class TicketsWebService {
  factory TicketsWebService(Dio dio, {String baseUrl}) = _TicketsWebService;

  //get all TicketsStatusModel
  @GET("getAllTicketsStatus")
  Future<TicketsStatusModel> getTicketsStatus();
  //get all ticke types
  @GET("getAllTicketsTypes")
  Future<TicketsStatusModel> getTicketTypes();
  //get all tickets
  // @GET("tickets")
  // Future<TicketsModel> getAllTickets();
}
