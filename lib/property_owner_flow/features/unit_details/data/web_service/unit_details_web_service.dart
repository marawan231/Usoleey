import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/network_service/base_response.dart';
import '../models/unit_details_model.dart';

part 'unit_details_web_service.g.dart';

@RestApi()
abstract class UnitDetailsWebService {
  factory UnitDetailsWebService(Dio dio, {String baseUrl}) =
      _UnitDetailsWebService;

  @GET("units/{id}")
  Future<BaseResponse<UnitDetailsModel>> getUnitDetails(@Path("id") String id);
}
