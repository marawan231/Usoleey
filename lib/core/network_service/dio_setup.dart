import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter_complete_project/core/network_service/token_interceptor.dart';

final Dio dio = Dio();

Dio setupDio() {
  dio
    ..options.connectTimeout = const Duration(seconds: 10)
    ..options.receiveTimeout = const Duration(seconds: 10);

  dio.interceptors.add(
    RetryInterceptor(
      dio: dio,
      logPrint: print, // specify log function (optional)
      retries: 1, // retry count (optional)
      retryDelays: const [
        Duration(seconds: 1), // wait 1 sec before the first retry
      ],
    ),
  );
  dio.interceptors.add(TokenIntereceptor());
  dio.interceptors.add(
    LogInterceptor(
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
