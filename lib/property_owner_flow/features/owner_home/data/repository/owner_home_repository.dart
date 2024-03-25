import 'package:flutter_complete_project/property_owner_flow/features/owner_home/data/models/home_model.dart';

import '../../../../../core/network_service/api_result.dart';
import '../../../../../core/network_service/network_exceptions.dart';
import '../web_service/owner_home_web_service.dart';

class OwnerHomeRepository {
  final OwnerHomeWebService ownerhomeWebService;

  OwnerHomeRepository(this.ownerhomeWebService);

  Future<ApiResult<HomeModel>> getHomeStats() async {
    try {
      var response = await ownerhomeWebService.getHomeStats();
      return ApiResult.success(response.data!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
