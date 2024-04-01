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
          createPropertyRequestModel.image,
          createPropertyRequestModel.name,
          createPropertyRequestModel.address,
          createPropertyRequestModel.unitsCount,
          createPropertyRequestModel.instrumentNumber,
          createPropertyRequestModel.postalCode,
          createPropertyRequestModel.blockNumber,
          createPropertyRequestModel.street,
          createPropertyRequestModel.district,
          createPropertyRequestModel.city,
          createPropertyRequestModel.ownerId);
      return ApiResult.success(response.message!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
