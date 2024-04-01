import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/network_service/base_response.dart';
import 'package:retrofit/retrofit.dart';

part 'create_property_web_service.g.dart';

@RestApi()
abstract class CreatePropertyWebServices {
  factory CreatePropertyWebServices(Dio dio, {String baseUrl}) =
      _CreatePropertyWebServices;

  @POST("properties")
  @MultiPart()
  Future<BaseResponse> createProperty(
    @Part() File image,
    @Part() String name,
    @Part() String address,
    @Part() int unitsCount,
    @Part() String instrumentNumber,
    @Part() int postalCode,
    @Part() int blockNumber,
    @Part() String street,
    @Part() String district,
    @Part() String city,
    @Part() int ownerId,
  );
}
