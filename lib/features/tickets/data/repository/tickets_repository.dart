
import 'package:flutter_complete_project/core/network_service/api_result.dart';
import 'package:flutter_complete_project/core/network_service/network_exceptions.dart';
import 'package:flutter_complete_project/features/tickets/data/models/tickets_status_model.dart';
import 'package:flutter_complete_project/features/tickets/data/web_service/tickets_web_service.dart';

class TicketsRepository {
  final TicketsWebService ticketsWebService;

  TicketsRepository({required this.ticketsWebService});

 Future<ApiResult<TicketsStatusModel>> getAllUnits(
      ) async {
    try {
      var response = await ticketsWebService.getTicketsStatus();
      return ApiResult.success(response);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
