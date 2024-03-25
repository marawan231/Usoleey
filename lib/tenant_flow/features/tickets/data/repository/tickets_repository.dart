import 'dart:developer';

import 'package:flutter_complete_project/core/network_service/api_result.dart';
import 'package:flutter_complete_project/core/network_service/network_exceptions.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/data/models/tickets_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/tickets/data/web_service/tickets_web_service.dart';

class TicketsRepository {
  final TicketsWebService ticketsWebService;

  TicketsRepository({required this.ticketsWebService});

  //get all tickets
  Future<ApiResult<TicketsModel>> getAllTickets() async {
    try {
      var response = await ticketsWebService.getAllTickets();
      return ApiResult.success(response);
    } catch (error, stacktrace) {
      log('getAllTickets error: $error');
      log('getAllTickets stacktrace: $stacktrace');
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
