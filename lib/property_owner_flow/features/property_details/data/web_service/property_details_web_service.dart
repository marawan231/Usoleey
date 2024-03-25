import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'property_details_web_service.g.dart';

@RestApi()
class PropertyDetailsWebService {
  factory PropertyDetailsWebService(Dio dio, {String baseUrl}) =
      _PropertyDetailsWebService;
}
