import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/network_service/base_response.dart';
import 'package:retrofit/retrofit.dart';

import '../models/notification_model.dart';

part 'owner_notification_web_services.g.dart';

@RestApi()
abstract class OwnerNotificationWebService {
  factory OwnerNotificationWebService(Dio dio, {String baseUrl}) =
      _OwnerNotificationWebService;

  @GET("notifications")
  Future<BaseResponse<NotificationModel>> getOwnerNotification(
      @Query('page') int page, @Query('limit') int limit);
}
