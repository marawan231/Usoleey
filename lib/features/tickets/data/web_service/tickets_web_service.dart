import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/network_service/network_constants.dart';
import 'package:flutter_complete_project/features/tickets/data/models/tickets_status_model.dart';
import 'package:retrofit/retrofit.dart';

part 'tickets_web_service.g.dart';

@RestApi(baseUrl: NetworkConstants.mockBaseUrl)
abstract class TicketsWebService {
  factory TicketsWebService(Dio dio, {String baseUrl}) = _TicketsWebService;

  //get all TicketsStatusModel
  @GET("tickets/status")
  Future<TicketsStatusModel> getTicketsStatus();
}
