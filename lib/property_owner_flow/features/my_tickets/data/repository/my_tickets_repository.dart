import 'package:flutter_complete_project/property_owner_flow/features/my_tickets/data/models/get_my_tickets_query_model.dart';
import 'package:flutter_complete_project/property_owner_flow/features/my_tickets/data/web_service/my_tickets_web_service.dart';

import '../../../../../core/network_service/api_result.dart';
import '../../../../../core/network_service/network_exceptions.dart';
import '../../../../../core/shared_models/all_tickets_model.dart';

class MyTicketsRepository {
  final MyTicketsWebServices myTicketsWebServices;

  MyTicketsRepository(this.myTicketsWebServices);

  Future<ApiResult<AllTicketsModel>> getMyTickets(
      {required GetMyTicketsQueryModel getMyTicketsQueryModel}) async {
    Map<String, dynamic> queries = getMyTicketsQueryModel.toJson();
    queries.keys.where((key) => queries[key] != null || queries[key] != '');
    try {
      var response = await myTicketsWebServices.getMyTickets(queries);
      return ApiResult.success(response.data!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
