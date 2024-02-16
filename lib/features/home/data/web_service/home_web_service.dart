import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/network_service/network_constants.dart';
import 'package:flutter_complete_project/features/tickets/data/models/tickets_model.dart';
import 'package:retrofit/retrofit.dart';

import '../models/units_model.dart';

part 'home_web_service.g.dart';

@RestApi(baseUrl: NetworkConstants.baseUrl)
abstract class HomeWebServices {
  factory HomeWebServices(Dio dio, {String baseUrl}) = _HomeWebServices;

  @GET("dashboard/units")
  Future<UnitsModel> getUnits();
  //get all TicketsStatusModel
    @GET("tickets")
  Future<TicketsModel> getAllTickets();

  
}
