import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/network_service/base_response.dart';
import 'package:retrofit/retrofit.dart';

part 'create_property_web_service.g.dart';

@RestApi()
abstract class CreatePropertyWebServices {
  factory CreatePropertyWebServices(Dio dio, {String baseUrl}) =
      _CreatePropertyWebServices;

  @POST("properties")
  @FormUrlEncoded()
  Future<BaseResponse> createProperty({
    @Field('name') required String name,
    @Field('address') required String address,
    @Field('unitsCount') required int unitsCount,
    @Field('instrumentNumber') required String instrumentNumber,
    @Field('postalCode') required int postalCode,
    @Field('blockNumber') required int blockNumber,
    @Field('street') required String street,
    @Field('district') required String district,
    @Field('city') required String city,
    @Field('ownerId') required int ownerId,
  });
}
