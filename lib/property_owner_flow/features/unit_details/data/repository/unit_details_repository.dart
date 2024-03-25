import 'package:flutter_complete_project/property_owner_flow/features/unit_details/data/models/unit_details_model.dart';

import '../../../../../core/network_service/api_result.dart';
import '../../../../../core/network_service/network_exceptions.dart';
import '../web_service/unit_details_web_service.dart';

class UnitDetailsRepository {
  final UnitDetailsWebService unitDetailsWebService;

  UnitDetailsRepository(this.unitDetailsWebService);

  Future<ApiResult<UnitDetailsModel>> getMyProperties(
      {required String id}) async {
    try {
      var response = await unitDetailsWebService.getUnitDetails(id);
      return ApiResult.success(response.data!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
