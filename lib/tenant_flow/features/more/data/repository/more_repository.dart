
import 'package:flutter_complete_project/core/network_service/api_result.dart';
import 'package:flutter_complete_project/core/network_service/network_exceptions.dart';
import 'package:flutter_complete_project/tenant_flow/features/more/data/models/contact_info_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/more/data/web_services/more_web_services.dart';

class MoreRepository {
  final MoreWebServices moreWebServices;

  MoreRepository({required this.moreWebServices});

 Future<ApiResult<ContactInfoModel>> getContactsInfo(
      ) async {
    try {
      var response = await moreWebServices.getContactInfo();
      return ApiResult.success(response);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }

}
