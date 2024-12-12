// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_unit_web_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _CreateUnitWebServices implements CreateUnitWebServices {
  _CreateUnitWebServices(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<BaseResponse<dynamic>> createUnit(
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
    String maintenanceMan,
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
      'maintenanceMan',
      maintenanceMan,
    ));
    _data.fields.add(MapEntry(
      'ownerId',
      ownerId.toString(),
    ));
    final _options = _setStreamType<BaseResponse<dynamic>>(Options(
      method: 'POST',
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
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponse<dynamic> _value;
    try {
      _value = BaseResponse<dynamic>.fromJson(
        _result.data!,
        (json) => json as dynamic,
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
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
    final _options = _setStreamType<BaseResponse<OwnerPropertyModel>>(Options(
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
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponse<OwnerPropertyModel> _value;
    try {
      _value = BaseResponse<OwnerPropertyModel>.fromJson(
        _result.data!,
        (json) => OwnerPropertyModel.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
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
