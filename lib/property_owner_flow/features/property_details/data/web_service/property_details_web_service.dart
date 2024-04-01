import 'package:dio/dio.dart';
import 'package:flutter_complete_project/property_owner_flow/features/property_details/data/models/propert_details_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/network_service/base_response.dart';

part 'property_details_web_service.g.dart';

@RestApi()
abstract class PropertyDetailsWebService {
  factory PropertyDetailsWebService(Dio dio, {String baseUrl}) =
      _PropertyDetailsWebService;

  @GET("properties/{id}")
  Future<BaseResponse<PropertDetailsModel>> getPropertyDetails(
      @Path("id") String id);
}
