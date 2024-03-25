import '../../../../../core/network_service/api_result.dart';
import '../../../../../core/network_service/network_exceptions.dart';
import '../../../../../core/shared_models/owner_property_model.dart';
import '../../../../../core/shared_models/owner_unit_model.dart';
import '../web_service/my_real_estate_web_service.dart';

class MyRealEstateRepository {
  final MyRealEstateWebServices myRealEstateWebServices;

  MyRealEstateRepository(this.myRealEstateWebServices);

  Future<ApiResult<OwnerPropertyModel>> getMyProperties(
      {int page = 1, int limit = 5}) async {
    try {
      var response = await myRealEstateWebServices.getMyProperties(limit, page);
      return ApiResult.success(response.data!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }

  Future<ApiResult<OwnerUnitModel>> getMyUnits(
      {int page = 1, int limit = 5}) async {
    try {
      var response = await myRealEstateWebServices.getMyUnits(limit, page);
      return ApiResult.success(response.data!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
