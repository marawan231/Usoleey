import 'package:flutter_complete_project/core/network_service/api_result.dart';
import 'package:flutter_complete_project/core/network_service/network_exceptions.dart';

import '../models/notification_model.dart';
import '../web_services/owner_notification_web_services.dart';

class OwnerNotificationRepository {
  final OwnerNotificationWebService ownerNotificationWebService;

  OwnerNotificationRepository(this.ownerNotificationWebService);

  Future<ApiResult<NotificationModel>> getOwnerNotification(
      {int page = 1, int limit = 15}) async {
    try {
      var response =
          await ownerNotificationWebService.getOwnerNotification(page, limit);
      return ApiResult.success(response.data!);
    } catch (error, stacktrace) {
      return ApiResult.failure(
          DioExceptionType.getDioException(error, stacktrace));
    }
  }
}
