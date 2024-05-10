import 'package:flutter_complete_project/core/network_service/api_result.dart';
import 'package:flutter_complete_project/core/network_service/network_exceptions.dart';
import 'package:flutter_complete_project/property_owner_flow/features/owner_invoices/data/models/all_invoice_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/data/models/ads_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/data/models/units_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/home/data/web_service/home_web_service.dart';

import '../../../../../property_owner_flow/features/unit_details/data/models/invoice_model.dart';

class HomeRepository {
  final HomeWebServices homeWebServices;

  HomeRepository({required this.homeWebServices});

  Future<ApiResult<UnitsModel>> getAllUnits() async {
    try {
      var response = await homeWebServices.getUnits();
      return ApiResult.success(response);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }

  //get all ads
  Future<ApiResult<AdsModel>> getAds() async {
    try {
      var response = await homeWebServices.getAds();
      return ApiResult.success(response);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }

  Future<ApiResult<int>> getNotificationCount() async {
    try {
      var response = await homeWebServices.getNotificationCount();
      return ApiResult.success(response.data!['count']);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }

  Future<ApiResult<List<InvoiceModel>>> getNextInvoices() async {
    try {
      var response = await homeWebServices.getNextInvoices();
      return ApiResult.success(response.data?.invoices ?? []);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
