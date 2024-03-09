import 'package:dio/dio.dart';
import 'package:flutter_complete_project/tenant_flow/features/more/data/models/contact_info_model.dart';
import 'package:retrofit/retrofit.dart';


part 'more_web_services.g.dart';

@RestApi()
abstract class MoreWebServices {
  factory MoreWebServices(Dio dio, {String baseUrl}) = _MoreWebServices;

  @GET("contacts")
  Future<ContactInfoModel> getContactInfo();


}
