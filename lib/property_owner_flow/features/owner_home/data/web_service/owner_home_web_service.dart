import 'package:dio/dio.dart';
import 'package:flutter_complete_project/property_owner_flow/features/owner_home/data/models/home_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/network_service/base_response.dart';

part 'owner_home_web_service.g.dart';

@RestApi()
abstract class OwnerHomeWebService {
  factory OwnerHomeWebService(Dio dio, {String baseUrl}) = _OwnerHomeWebService;

  @GET("stats")
  Future<BaseResponse<HomeModel>> getHomeStats();
}
