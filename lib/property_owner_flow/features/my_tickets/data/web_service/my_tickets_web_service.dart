import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/network_service/base_response.dart';
import '../../../../../core/shared_models/all_tickets_model.dart';

part 'my_tickets_web_service.g.dart';

@RestApi()
abstract class MyTicketsWebServices {
  factory MyTicketsWebServices(Dio dio, {String baseUrl}) =
      _MyTicketsWebServices;

  @GET("tickets")
  Future<BaseResponse<AllTicketsModel>> getMyTickets(
      @Queries() Map<String, dynamic> queries);
}
