import 'package:flutter_complete_project/property_owner_flow/features/property_details/data/models/propert_details_model.dart';

import '../../../../../core/network_service/api_result.dart';
import '../../../../../core/network_service/network_exceptions.dart';
import '../web_service/property_details_web_service.dart';

class PropertyDetailsRepository {
  final PropertyDetailsWebService propertyDetailsWebService;

  PropertyDetailsRepository(this.propertyDetailsWebService);

  Future<ApiResult<PropertDetailsModel>> getUnitDetails(
      {required String id}) async {
    try {
      var response = await propertyDetailsWebService.getPropertyDetails(id);
      return ApiResult.success(response.data!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
