import 'package:flutter_complete_project/tenant_flow/features/login/data/models/auth_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/data/models/login_request_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/data/web_service/auth_web_service.dart';

import '../../../../../../core/network_service/api_result.dart';
import '../../../../../../core/network_service/network_exceptions.dart';

class AuthRepository {
  final AuthWebService authWebService;

  AuthRepository(this.authWebService);

  Future<ApiResult<AuthModel>> signIn(
      {required LoginRequestModel loginRequestModel}) async {
    try {
      var response = await authWebService.signIn(loginRequestModel);
      return ApiResult.success(response);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
