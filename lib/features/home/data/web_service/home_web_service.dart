import 'package:dio/dio.dart';
import 'package:flutter_complete_project/features/home/data/models/ads_model.dart';
import 'package:retrofit/retrofit.dart';

import '../models/units_model.dart';

part 'home_web_service.g.dart';

@RestApi()
abstract class HomeWebServices {
  factory HomeWebServices(Dio dio, {String baseUrl}) = _HomeWebServices;

  @GET("units")
  Future<UnitsModel> getUnits();
  //get all TicketsStatusModel

  //get all ads
  @GET("ads")
  Future<AdsModel> getAds();
}
