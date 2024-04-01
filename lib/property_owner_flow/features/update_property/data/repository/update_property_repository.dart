import 'package:flutter_complete_project/property_owner_flow/features/property_details/data/models/propert_details_model.dart';
import 'package:flutter_complete_project/property_owner_flow/features/update_property/data/web_service/update_property_web_services.dart';

import '../../../../../core/network_service/api_result.dart';
import '../../../../../core/network_service/network_exceptions.dart';
import '../models/update_property_request_model.dart';

class UpdatePropertyRepository {
  final UpdatePropertyWebServices updatePropertyWebServices;

  UpdatePropertyRepository(this.updatePropertyWebServices);

  Future<ApiResult<PropertDetailsModel>> updateProperty(
      UpdatePropertyRequestModel updatePropertyRequestModel) async {
    try {
      var response = await updatePropertyWebServices.updateProperty(
          updatePropertyRequestModel.id,
          image: updatePropertyRequestModel.image,
          name: updatePropertyRequestModel.name,
          address: updatePropertyRequestModel.address,
          city: updatePropertyRequestModel.city,
          district: updatePropertyRequestModel.district,
          instrumentNumber: updatePropertyRequestModel.instrumentNumber,
          blockNumber: updatePropertyRequestModel.blockNumber,
          postalCode: updatePropertyRequestModel.postalCode,
          street: updatePropertyRequestModel.street,
          unitsCount: updatePropertyRequestModel.unitsCount,
          ownerId: updatePropertyRequestModel.ownerId);
      return ApiResult.success(response.data!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
