import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_complete_project/property_owner_flow/features/property_details/data/models/propert_details_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/network_service/base_response.dart';

part 'update_property_web_services.g.dart';

@RestApi()
abstract class UpdatePropertyWebServices {
  factory UpdatePropertyWebServices(Dio dio, {String baseUrl}) =
      _UpdatePropertyWebServices;

  @PUT("properties/{id}")
  @MultiPart()
  Future<BaseResponse<PropertDetailsModel>> updateProperty(
      @Path('id') String id,
      {@Part() File? image,
      @Part() String? name,
      @Part() String? address,
      @Part() String? street,
      @Part() String? district,
      @Part() String? city,
      @Part() int? unitsCount,
      @Part() int? instrumentNumber,
      @Part() int? blockNumber,
      @Part() int? postalCode,
      @Part() int? ownerId});
}
