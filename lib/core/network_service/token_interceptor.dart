import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/constants/constants.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/tenant_flow/features/choose_language/logic/cubit/choose_language_cubit.dart';

class TokenIntereceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // log(options.baseUrl.toString() + options.path.toString());

    options.headers['Authorization'] = 'Bearer ' + '$token';
    options.headers['Accept-Language'] =
        getIt<ChooseLanguageCubit>().state.language!.languageCode;
    // options.headers['providername'] = 'TenTen';

    //app

    //   options.headers['lang'] = 'ar';
    // }
    super.onRequest(options, handler);
    // }
  }
}
