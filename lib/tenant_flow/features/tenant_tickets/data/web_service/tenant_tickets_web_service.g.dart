// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_tickets_web_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _TenantTicketsWebService implements TenantTicketsWebService {
  _TenantTicketsWebService(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BaseResponse<AllTicketsModel>> getTenantTickets(
      Map<String, dynamic> queries) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponse<AllTicketsModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'tickets',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BaseResponse<AllTicketsModel>.fromJson(
      _result.data!,
      (json) => AllTicketsModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BaseResponse<OwnerUnitModel>> getMyUnits() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponse<OwnerUnitModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
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
    final value = BaseResponse<OwnerUnitModel>.fromJson(
      _result.data!,
      (json) => OwnerUnitModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BaseResponse<TicketDetailsModel>> createTicket(
    List<File> images,
    String description,
    String type,
    int unitId,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.files.addAll(images.map((i) => MapEntry(
        'images',
        MultipartFile.fromFileSync(
          i.path,
          filename: i.path.split(Platform.pathSeparator).last,
        ))));
    _data.fields.add(MapEntry(
      'description',
      description,
    ));
    _data.fields.add(MapEntry(
      'type',
      type,
    ));
    _data.fields.add(MapEntry(
      'unitId',
      unitId.toString(),
    ));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponse<TicketDetailsModel>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              'tickets',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BaseResponse<TicketDetailsModel>.fromJson(
      _result.data!,
      (json) => TicketDetailsModel.fromJson(json as Map<String, dynamic>),
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
