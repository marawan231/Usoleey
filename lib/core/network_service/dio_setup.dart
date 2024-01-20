import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter_complete_project/core/network_service/token_interceptor.dart';
// import 'package:tenten_pay/core/helpers/language_controller.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
// import 'package:tenten_pay/core/navigator/navigator.dart';
// import 'package:tenten_pay/core/network_service/token_interceptor.dart';
// import 'package:tenten_pay/core/settings.dart';
// import 'package:tenten_pay/core/utils/enums.dart';
// import 'package:tenten_pay/core/utils/utils_functions.dart';

// import '../helpers/secure_storage.dart';
// import '../services/service_locator.dart';

final Dio dio = Dio();

String? token;
String? deviceId;
String? phoneNumber;
String? userId;

// Future<void> getDataFromLocalStorageData() async {
//   userId = await sl<SecureStorage>().get(key: 'userId') ?? '';
//   token = await sl<SecureStorage>().get(key: 'accessToken') ?? '';
//   phoneNumber = await sl<SecureStorage>().get(key: 'phoneNumber') ?? '';
//   deviceId = await Utils.getDeviceId();
// }

// Future<void> updateAccessToken() async {
//   token = await sl<SecureStorage>().get(key: 'accessToken') ?? '';
// }

// CancelToken cancelToken = CancelToken(); // Create a CancelToken instance

Dio setupDio() {
  // Alice alice = sl<Alice>();
  // getDataFromLocalStorageData().then((value) => {
        dio
          ..options.connectTimeout = const Duration(seconds: 10)
          ..options.receiveTimeout = const Duration(seconds: 10);
          //..options.baseUrl = AppConstants.baseUrl
  
          // ));

  dio.interceptors.add(
    RetryInterceptor(

   
      dio: dio,
      logPrint: print, // specify log function (optional)
      retries: 3, // retry count (optional)
      retryDelays: const [
        // set delays between retries (optional)
        Duration(seconds: 1), // wait 1 sec before the first retry
        Duration(seconds: 2), // wait 2 sec before the second retry
        Duration(seconds: 3), // wait 3 sec before the third retry
      ],
    ),
  );
  dio.interceptors.add(TokenIntereceptor());
  //dio.interceptors.add(AppInterceptors(client: dio));

  dio.interceptors.add(
    PrettyDioLogger(
      requestBody: true,
      error: true,
      // logPrint: (object) => log(object.toString()),
      requestHeader: true,
      responseHeader: true,
      responseBody: true,
      request: true,
    ),
  );

 
  return dio;
}
