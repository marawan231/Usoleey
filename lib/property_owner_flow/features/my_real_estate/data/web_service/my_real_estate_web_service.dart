import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/network_service/base_response.dart';
import '../../../../../core/shared_models/owner_property_model.dart';
import '../../../../../core/shared_models/owner_unit_model.dart';

part 'my_real_estate_web_service.g.dart';

@RestApi()
abstract class MyRealEstateWebServices {
  factory MyRealEstateWebServices(Dio dio, {String baseUrl}) =
      _MyRealEstateWebServices;

  @GET("properties")
  Future<BaseResponse<OwnerPropertyModel>> getMyProperties(
      @Query('limit') int limit, @Query('page') int page);

  @GET("units")
  Future<BaseResponse<OwnerUnitModel>> getMyUnits(
      @Query('limit') int limit, @Query('page') int page);
}


