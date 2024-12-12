// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_property_web_services.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _UpdatePropertyWebServices implements UpdatePropertyWebServices {
  _UpdatePropertyWebServices(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<BaseResponse<PropertDetailsModel>> updateProperty(
    String id, {
    File? image,
    String? name,
    String? address,
    String? street,
    String? district,
    String? city,
    int? unitsCount,
    int? instrumentNumber,
    int? blockNumber,
    int? postalCode,
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
    if (address != null) {
      _data.fields.add(MapEntry(
        'address',
        address,
      ));
    }
    if (street != null) {
      _data.fields.add(MapEntry(
        'street',
        street,
      ));
    }
    if (district != null) {
      _data.fields.add(MapEntry(
        'district',
        district,
      ));
    }
    if (city != null) {
      _data.fields.add(MapEntry(
        'city',
        city,
      ));
    }
    if (unitsCount != null) {
      _data.fields.add(MapEntry(
        'unitsCount',
        unitsCount.toString(),
      ));
    }
    if (instrumentNumber != null) {
      _data.fields.add(MapEntry(
        'instrumentNumber',
        instrumentNumber.toString(),
      ));
    }
    if (blockNumber != null) {
      _data.fields.add(MapEntry(
        'blockNumber',
        blockNumber.toString(),
      ));
    }
    if (postalCode != null) {
      _data.fields.add(MapEntry(
        'postalCode',
        postalCode.toString(),
      ));
    }
    if (ownerId != null) {
      _data.fields.add(MapEntry(
        'ownerId',
        ownerId.toString(),
      ));
    }
    final _options = _setStreamType<BaseResponse<PropertDetailsModel>>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
        .compose(
          _dio.options,
          'properties/${id}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponse<PropertDetailsModel> _value;
    try {
      _value = BaseResponse<PropertDetailsModel>.fromJson(
        _result.data!,
        (json) => PropertDetailsModel.fromJson(json as Map<String, dynamic>),
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
