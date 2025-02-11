import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter_complete_project/core/network_service/token_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'app_interceptor.dart';

final Dio dio = Dio();

Dio setupDio() {
  dio
    ..options.connectTimeout = const Duration(seconds: 10)
    ..options.receiveTimeout = const Duration(seconds: 10);

  dio.interceptors.add(
    RetryInterceptor(
      dio: dio,
      logPrint: log, // specify log function (optional)
      retries: 1, // retry count (optional)
      retryDelays: const [
        Duration(seconds: 1), // wait 1 sec before the first retry
      ],
    ),
  );
  dio.interceptors.add(TokenIntereceptor());
  dio.interceptors.add(AppInterceptors());
  dio.interceptors.add(
    PrettyDioLogger(
      requestBody: true,
      error: true,
      requestHeader: true,
      responseHeader: false,
      responseBody: true,
      request: true,
    ),
  );

  return dio;
}
