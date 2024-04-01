import 'package:flutter_complete_project/property_owner_flow/features/update_unit/data/models/update_unit_request_model.dart';

import '../../../../../core/network_service/api_result.dart';
import '../../../../../core/network_service/network_exceptions.dart';
import '../../../../../core/shared_models/owner_property_model.dart';
import '../../../ticket_details/data/models/ticket_details_model.dart';
import '../web_service/update_unit_web_services.dart';

class UpdateUnitRepository {
  final UpdateUnitWebServices updateUnitWebServices;

  UpdateUnitRepository(this.updateUnitWebServices);

  Future<ApiResult<Unit>> updateUnit(
      UpdateUnitRequestModel updateUnitRequestModel) async {
    try {
      var response = await updateUnitWebServices.updateUnit(
          updateUnitRequestModel.id,
          image: updateUnitRequestModel.image,
          name: updateUnitRequestModel.name,
          rent: updateUnitRequestModel.rent,
          rentCollectionDate:
              updateUnitRequestModel.rentCollectionDate?.toIso8601String(),
          electricityAccount: updateUnitRequestModel.electricityAccount,
          waterAccount: updateUnitRequestModel.waterAccount,
          address: updateUnitRequestModel.address,
          space: updateUnitRequestModel.space,
          rooms: updateUnitRequestModel.rooms,
          bathrooms: updateUnitRequestModel.bathrooms,
          lounge: updateUnitRequestModel.lounge,
          conditioners: updateUnitRequestModel.conditioners,
          kitchen: updateUnitRequestModel.kitchen,
          propertyId: updateUnitRequestModel.propertyId,
          ownerId: updateUnitRequestModel.ownerId);
      return ApiResult.success(response.data!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }

  Future<ApiResult<OwnerPropertyModel>> getMyProperties(
      {int page = 1, int limit = 5}) async {
    try {
      var response = await updateUnitWebServices.getMyProperties(limit, page);
      return ApiResult.success(response.data!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
