import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/network_service/api_result.dart';
import 'package:flutter_complete_project/core/network_service/network_exceptions.dart';
import 'package:flutter_complete_project/features/home/data/web_service/home_web_service.dart';
import 'package:flutter_complete_project/features/tickets/data/models/tickets_model.dart';
import 'package:flutter_complete_project/features/tickets/data/models/tickets_status_model.dart';
import 'package:flutter_complete_project/features/tickets/data/web_service/tickets_web_service.dart';

class TicketsRepository {
  final TicketsWebService ticketsWebService;

  TicketsRepository({required this.ticketsWebService});

  Future<ApiResult<TicketsStatusModel>> getTicketsStatus() async {
    try {
      var response = await ticketsWebService.getTicketsStatus();
      return ApiResult.success(response);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }

  //get all ticke types
  Future<ApiResult<TicketsStatusModel>> getTicketTypes() async {
    try {
      var response = await ticketsWebService.getTicketTypes();
      return ApiResult.success(response);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }

  //get all tickets
  Future<ApiResult<TicketsModel>> getAllTickets() async {
    try {
      var response = await HomeWebServices(getIt()).getAllTickets();
      return ApiResult.success(response);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
