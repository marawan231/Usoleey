import 'package:flutter_complete_project/property_owner_flow/features/ticket_details/data/models/rate_request_model.dart';
import 'package:flutter_complete_project/property_owner_flow/features/ticket_details/data/models/ticket_details_model.dart';
import 'package:flutter_complete_project/property_owner_flow/features/ticket_details/data/web_services/ticket_details_web_services.dart';

import '../../../../../core/network_service/api_result.dart';
import '../../../../../core/network_service/network_exceptions.dart';
import '../models/create_invoice_request_model.dart';

class TicketDetailsRepository {
  final TicketDetailsWebServices ticketDetailsWebServices;

  TicketDetailsRepository(this.ticketDetailsWebServices);

  Future<ApiResult<TicketDetailsModel>> getTicketDetails(
      {required String id}) async {
    try {
      var response = await ticketDetailsWebServices.getTicketDetails(id);
      return ApiResult.success(response.data!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }

  Future<ApiResult<TicketDetailsModel>> updateTicket(
      {required String id, required String status}) async {
    try {
      var response = await ticketDetailsWebServices.updateTicket(id, status);
      return ApiResult.success(response.data!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }

  Future<ApiResult<String>> createInvoice(
      CreateInvoiceRequestModel createInvoiceRequestModel) async {
    try {
      var response = await ticketDetailsWebServices.createInvoice(
          createInvoiceRequestModel.file,
          DateTime.now().toString(),
          'TICKET',
          createInvoiceRequestModel.unitId,
          createInvoiceRequestModel.ticketId);
      return ApiResult.success(response.message!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }

  Future<ApiResult<String>> rate(RateRequestModel rateRequestModel) async {
    try {
      var response = await ticketDetailsWebServices.rate(
          rateRequestModel: rateRequestModel);
      return ApiResult.success(response.message!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
