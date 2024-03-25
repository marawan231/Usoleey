import '../../../../../core/network_service/api_result.dart';
import '../../../../../core/network_service/network_exceptions.dart';
import '../models/create_property_request.dart';
import '../web_service/create_property_web_service.dart';

class CreatePropertyRepository {
  final CreatePropertyWebServices createPropertyWebServices;

  CreatePropertyRepository(this.createPropertyWebServices);

  Future<ApiResult<String>> createProperty(
      CreatePropertyRequestModel createPropertyRequestModel) async {
    try {
      var response = await createPropertyWebServices.createProperty(
          name: createPropertyRequestModel.name,
          address: createPropertyRequestModel.address,
          blockNumber: createPropertyRequestModel.blockNumber,
          city: createPropertyRequestModel.city,
          district: createPropertyRequestModel.district,
          instrumentNumber: createPropertyRequestModel.instrumentNumber,
          ownerId: createPropertyRequestModel.ownerId,
          postalCode: createPropertyRequestModel.postalCode,
          street: createPropertyRequestModel.street,
          unitsCount: createPropertyRequestModel.unitsCount);
      return ApiResult.success(response.message!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
