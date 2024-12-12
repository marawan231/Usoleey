// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_unit_web_services.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _UpdateUnitWebServices implements UpdateUnitWebServices {
  _UpdateUnitWebServices(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<BaseResponse<Unit>> updateUnit(
    String id, {
    File? image,
    String? name,
    num? rent,
    String? rentCollectionDate,
    String? electricityAccount,
    String? waterAccount,
    String? address,
    num? space,
    int? rooms,
    int? bathrooms,
    bool? lounge,
    int? conditioners,
    bool? kitchen,
    int? propertyId,
    int? ownerId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (image != null) {
      _data.files.add(MapEntry(
        'image',
        MultipartFile.fromFileSync(
          image.path,
          filename: image.path.split(Platform.pathSeparator).last,
        ),
      ));
    }
    if (name != null) {
      _data.fields.add(MapEntry(
        'name',
        name,
      ));
    }
    if (rent != null) {
      _data.fields.add(MapEntry(
        'rent',
        rent.toString(),
      ));
    }
    if (rentCollectionDate != null) {
      _data.fields.add(MapEntry(
        'rentCollectionDate',
        rentCollectionDate,
      ));
    }
    if (electricityAccount != null) {
      _data.fields.add(MapEntry(
        'electricityAccount',
        electricityAccount,
      ));
    }
    if (waterAccount != null) {
      _data.fields.add(MapEntry(
        'waterAccount',
        waterAccount,
      ));
    }
    if (address != null) {
      _data.fields.add(MapEntry(
        'address',
        address,
      ));
    }
    if (space != null) {
      _data.fields.add(MapEntry(
        'space',
        space.toString(),
      ));
    }
    if (rooms != null) {
      _data.fields.add(MapEntry(
        'rooms',
        rooms.toString(),
      ));
    }
    if (bathrooms != null) {
      _data.fields.add(MapEntry(
        'bathrooms',
        bathrooms.toString(),
      ));
    }
    if (lounge != null) {
      _data.fields.add(MapEntry(
        'lounge',
        lounge.toString(),
      ));
    }
    if (conditioners != null) {
      _data.fields.add(MapEntry(
        'conditioners',
        conditioners.toString(),
      ));
    }
    if (kitchen != null) {
      _data.fields.add(MapEntry(
        'kitchen',
        kitchen.toString(),
      ));
    }
    if (propertyId != null) {
      _data.fields.add(MapEntry(
        'propertyId',
        propertyId.toString(),
      ));
    }
    if (ownerId != null) {
      _data.fields.add(MapEntry(
        'ownerId',
        ownerId.toString(),
      ));
    }
    final _options = _setStreamType<BaseResponse<Unit>>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
        .compose(
          _dio.options,
          'units/${id}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponse<Unit> _value;
    try {
      _value = BaseResponse<Unit>.fromJson(
        _result.data!,
        (json) => Unit.fromJson(json as Map<String, dynamic>),
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
