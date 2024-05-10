// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tenant_invoices_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TenantInvoicesState {
  RequestState get getTenantInvoicesState => throw _privateConstructorUsedError;
  List<InvoiceModel> get invoices => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get selectedTab => throw _privateConstructorUsedError;
  String get invoiceType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TenantInvoicesStateCopyWith<TenantInvoicesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantInvoicesStateCopyWith<$Res> {
  factory $TenantInvoicesStateCopyWith(
          TenantInvoicesState value, $Res Function(TenantInvoicesState) then) =
      _$TenantInvoicesStateCopyWithImpl<$Res, TenantInvoicesState>;
  @useResult
  $Res call(
      {RequestState getTenantInvoicesState,
      List<InvoiceModel> invoices,
      int page,
      int selectedTab,
      String invoiceType});
}

/// @nodoc
class _$TenantInvoicesStateCopyWithImpl<$Res, $Val extends TenantInvoicesState>
    implements $TenantInvoicesStateCopyWith<$Res> {
  _$TenantInvoicesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getTenantInvoicesState = null,
    Object? invoices = null,
    Object? page = null,
    Object? selectedTab = null,
    Object? invoiceType = null,
  }) {
    return _then(_value.copyWith(
      getTenantInvoicesState: null == getTenantInvoicesState
          ? _value.getTenantInvoicesState
          : getTenantInvoicesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      invoices: null == invoices
          ? _value.invoices
          : invoices // ignore: cast_nullable_to_non_nullable
              as List<InvoiceModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceType: null == invoiceType
          ? _value.invoiceType
          : invoiceType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $TenantInvoicesStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState getTenantInvoicesState,
      List<InvoiceModel> invoices,
      int page,
      int selectedTab,
      String invoiceType});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TenantInvoicesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getTenantInvoicesState = null,
    Object? invoices = null,
    Object? page = null,
    Object? selectedTab = null,
    Object? invoiceType = null,
  }) {
    return _then(_$InitialImpl(
      getTenantInvoicesState: null == getTenantInvoicesState
          ? _value.getTenantInvoicesState
          : getTenantInvoicesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      invoices: null == invoices
          ? _value._invoices
          : invoices // ignore: cast_nullable_to_non_nullable
              as List<InvoiceModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceType: null == invoiceType
          ? _value.invoiceType
          : invoiceType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.getTenantInvoicesState = RequestState.loading,
      final List<InvoiceModel> invoices = const [],
      this.page = 1,
      this.selectedTab = 1,
      this.invoiceType = ''})
      : _invoices = invoices;

  @override
  @JsonKey()
  final RequestState getTenantInvoicesState;
  final List<InvoiceModel> _invoices;
  @override
  @JsonKey()
  List<InvoiceModel> get invoices {
    if (_invoices is EqualUnmodifiableListView) return _invoices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invoices);
  }

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int selectedTab;
  @override
  @JsonKey()
  final String invoiceType;

  @override
  String toString() {
    return 'TenantInvoicesState(getTenantInvoicesState: $getTenantInvoicesState, invoices: $invoices, page: $page, selectedTab: $selectedTab, invoiceType: $invoiceType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.getTenantInvoicesState, getTenantInvoicesState) ||
                other.getTenantInvoicesState == getTenantInvoicesState) &&
            const DeepCollectionEquality().equals(other._invoices, _invoices) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            (identical(other.invoiceType, invoiceType) ||
                other.invoiceType == invoiceType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getTenantInvoicesState,
      const DeepCollectionEquality().hash(_invoices),
      page,
      selectedTab,
      invoiceType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements TenantInvoicesState {
  const factory _Initial(
      {final RequestState getTenantInvoicesState,
      final List<InvoiceModel> invoices,
      final int page,
      final int selectedTab,
      final String invoiceType}) = _$InitialImpl;

  @override
  RequestState get getTenantInvoicesState;
  @override
  List<InvoiceModel> get invoices;
  @override
  int get page;
  @override
  int get selectedTab;
  @override
  String get invoiceType;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
