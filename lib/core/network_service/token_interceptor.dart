import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/constants/constants.dart';

class TokenIntereceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // log(options.baseUrl.toString() + options.path.toString());

    options.headers['Authorization'] = 'Bearer ' + '$token';
    options.headers['Accept-Language'] = 'en';
    // options.headers['providername'] = 'TenTen';

    //app

    //   options.headers['lang'] = 'ar';
    // }
    super.onRequest(options, handler);
    // }
  }
}
