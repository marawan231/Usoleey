import 'package:flutter_complete_project/property_owner_flow/features/ticket_details/data/models/ticket_details_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/tenant_tickets/data/models/create_ticket_request_model.dart';

import '../../../../../core/network_service/api_result.dart';
import '../../../../../core/network_service/network_exceptions.dart';
import '../../../../../core/shared_models/all_tickets_model.dart';
import '../../../../../core/shared_models/owner_unit_model.dart';
import '../models/get_tenant_tickets_filter_model.dart';
import '../web_service/tenant_tickets_web_service.dart';

class TenantTicketsRepository {
  final TenantTicketsWebService tenantTicketsWebService;

  TenantTicketsRepository({required this.tenantTicketsWebService});

  Future<ApiResult<AllTicketsModel>> getMyTickets(
      {required GetTenantTicketsFilterModel
          getTenantTicketsFilterModel}) async {
    Map<String, dynamic> queries = getTenantTicketsFilterModel.toJson();
    queries.removeWhere((key, value) => value == null || value == '');
    try {
      var response = await tenantTicketsWebService.getTenantTickets(queries);
      return ApiResult.success(response.data!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }

  Future<ApiResult<OwnerUnitModel>> getMyUnits() async {
    try {
      var response = await tenantTicketsWebService.getMyUnits();
      return ApiResult.success(response.data!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }

  Future<ApiResult<TicketDetailsModel>> createTicket(
      CreateTicketRequestModel createTicketRequestModel) async {
    try {
      var response = await tenantTicketsWebService.createTicket(
          createTicketRequestModel.images,
          createTicketRequestModel.description,
          createTicketRequestModel.type,
          createTicketRequestModel.unitId);
      return ApiResult.success(response.data!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
