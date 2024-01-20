import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/network_service/bloc_observer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'core/resources/bloc_observer.dart';
import 'app/app.dart';
// import 'core/resources/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  // initGetIt();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    Bloc.observer = AppObserver();
    runApp(
      MyApp()
    );
  });
}