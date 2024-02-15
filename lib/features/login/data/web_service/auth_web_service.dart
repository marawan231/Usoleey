import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/network_service/network_constants.dart';
import 'package:flutter_complete_project/features/login/data/models/auth_model.dart';
import 'package:flutter_complete_project/features/login/data/models/login_request_model.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_web_service.g.dart';

@RestApi(baseUrl: NetworkConstants.baseUrl)
abstract class AuthWebService {
  factory AuthWebService(Dio dio, {String baseUrl}) = _AuthWebService;

  @POST("auth/login")
  Future<AuthModel> signIn(@Body() LoginRequestModel model);
}
