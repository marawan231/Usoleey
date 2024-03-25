// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_unit_web_services.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _UpdateUnitWebServices implements UpdateUnitWebServices {
  _UpdateUnitWebServices(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BaseResponse<dynamic>> updateUnit(
    File image,
    String name,
    num rent,
    String rentCollectionDate,
    String electricityAccount,
    String waterAccount,
    String address,
    int space,
    int rooms,
    int bathrooms,
    bool lounge,
    int conditioners,
    bool kitchen,
    int propertyId,
    int ownerId,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.files.add(MapEntry(
      'image',
      MultipartFile.fromFileSync(
        image.path,
        filename: image.path.split(Platform.pathSeparator).last,
      ),
    ));
    _data.fields.add(MapEntry(
      'name',
      name,
    ));
    _data.fields.add(MapEntry(
      'rent',
      rent.toString(),
    ));
    _data.fields.add(MapEntry(
      'rentCollectionDate',
      rentCollectionDate,
    ));
    _data.fields.add(MapEntry(
      'electricityAccount',
      electricityAccount,
    ));
    _data.fields.add(MapEntry(
      'waterAccount',
      waterAccount,
    ));
    _data.fields.add(MapEntry(
      'address',
      address,
    ));
    _data.fields.add(MapEntry(
      'space',
      space.toString(),
    ));
    _data.fields.add(MapEntry(
      'rooms',
      rooms.toString(),
    ));
    _data.fields.add(MapEntry(
      'bathrooms',
      bathrooms.toString(),
    ));
    _data.fields.add(MapEntry(
      'lounge',
      lounge.toString(),
    ));
    _data.fields.add(MapEntry(
      'conditioners',
      conditioners.toString(),
    ));
    _data.fields.add(MapEntry(
      'kitchen',
      kitchen.toString(),
    ));
    _data.fields.add(MapEntry(
      'propertyId',
      propertyId.toString(),
    ));
    _data.fields.add(MapEntry(
      'ownerId',
      ownerId.toString(),
    ));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponse<dynamic>>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              'units',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BaseResponse<dynamic>.fromJson(
      _result.data!,
      (json) => json as dynamic,
    );
    return value;
  }

  @override
  Future<BaseResponse<OwnerPropertyModel>> getMyProperties(
    int limit,
    int page,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'limit': limit,
      r'page': page,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponse<OwnerPropertyModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'properties',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BaseResponse<OwnerPropertyModel>.fromJson(
      _result.data!,
      (json) => OwnerPropertyModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
