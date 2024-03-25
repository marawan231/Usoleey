
import 'package:flutter_complete_project/core/shared_models/owner_property_model.dart';

import '../../../../../core/network_service/api_result.dart';
import '../../../../../core/network_service/network_exceptions.dart';
import '../models/create_unit_request_model.dart';
import '../web_service/create_unit_web_service.dart';

class CreateUnitRepository {
  final CreateUnitWebServices createUnitWebServices;

  CreateUnitRepository(this.createUnitWebServices);

  Future<ApiResult<String>> createUnit(
      CreateUnitRequestModel createUnitRequestModel) async {
    try {
      var response = await createUnitWebServices.createUnit(
          createUnitRequestModel.image,
          createUnitRequestModel.name,
          createUnitRequestModel.rent,
          createUnitRequestModel.rentCollectionDate.toIso8601String(),
          createUnitRequestModel.electricityAccount,
          createUnitRequestModel.waterAccount,
          createUnitRequestModel.address,
          createUnitRequestModel.space,
          createUnitRequestModel.rooms,
          createUnitRequestModel.bathrooms,
          createUnitRequestModel.lounge,
          createUnitRequestModel.conditioners,
          createUnitRequestModel.kitchen,
          createUnitRequestModel.propertyId,
          createUnitRequestModel.ownerId);
      return ApiResult.success(response.message!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }

  Future<ApiResult<OwnerPropertyModel>> getMyProperties(
      {int page = 1, int limit = 5}) async {
    try {
      var response = await createUnitWebServices.getMyProperties(limit, page);
      return ApiResult.success(response.data!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
