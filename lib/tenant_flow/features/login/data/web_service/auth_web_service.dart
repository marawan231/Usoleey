import 'package:dio/dio.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/data/models/auth_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/data/models/login_request_model.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_web_service.g.dart';

@RestApi()
abstract class AuthWebService {
  factory AuthWebService(Dio dio, {String baseUrl}) = _AuthWebService;

  @POST("auth/login")
  Future<AuthModel> signIn(@Body() LoginRequestModel model);
}
