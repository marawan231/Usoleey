import 'dart:developer';

import 'package:dio/dio.dart';

class TokenIntereceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    log(options.baseUrl.toString() + options.path.toString());
    // String? token = await sl<CacheHelper>().getData(key: 'token');
    // if (token != null) {
    // options.headers['deviceid'] = deviceId;
    // options.headers['countrycode'] = '+20';
    // options.headers['phonenumber'] = phoneNumber;
    // options.headers['accesstoken'] = token;
    options.headers['Accept-Language'] = 'en';
    // options.headers['providername'] = 'TenTen';

    //app

    //   options.headers['lang'] = 'ar';
    // }
    super.onRequest(options, handler);
    // }
  }
}
