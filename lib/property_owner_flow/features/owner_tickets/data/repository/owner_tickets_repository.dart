
import '../../../../../core/network_service/api_result.dart';
import '../../../../../core/network_service/network_exceptions.dart';
import '../models/all_tickets_model.dart';
import '../web_service/owner_tickets_web_service.dart';


class OwnerTicketsRepository {
  final OwnerTicketsWebServices ownerTicketsWebServices;

  OwnerTicketsRepository(this.ownerTicketsWebServices);

  Future<ApiResult<AllTicketsModel>> getOwnerTickets(
      {int page = 1, int limit = 25}) async {
    try {
      var response = await ownerTicketsWebServices.getOwnerTickets();
      return ApiResult.success(response.data!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
