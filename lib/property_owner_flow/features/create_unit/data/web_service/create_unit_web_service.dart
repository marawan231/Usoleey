import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/network_service/base_response.dart';
import '../../../../../core/shared_models/owner_property_model.dart';

part 'create_unit_web_service.g.dart';

@RestApi()
abstract class CreateUnitWebServices {
  factory CreateUnitWebServices(Dio dio, {String baseUrl}) =
      _CreateUnitWebServices;

  @POST("units")
  @MultiPart()
  Future<BaseResponse> createUnit(
      @Part()  File image,
      @Part() String name,
      @Part() num rent,
      @Part() String rentCollectionDate,
      @Part() String electricityAccount,
      @Part() String waterAccount,
      @Part() String address,
      @Part() int space,
      @Part() int rooms,
      @Part() int bathrooms,
      @Part() bool lounge,
      @Part() int conditioners,
      @Part() bool kitchen,
      @Part() int propertyId,
      @Part() int ownerId);

  @GET("properties")
  Future<BaseResponse<OwnerPropertyModel>> getMyProperties(
      @Query('limit') int limit, @Query('page') int page);
}
