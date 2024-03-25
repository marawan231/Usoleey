// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owner_invoices_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OwnerInvoicesState {
  RequestState get getInvoicesState => throw _privateConstructorUsedError;
  List<InvoiceModel> get invoices => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get selectedTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OwnerInvoicesStateCopyWith<OwnerInvoicesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerInvoicesStateCopyWith<$Res> {
  factory $OwnerInvoicesStateCopyWith(
          OwnerInvoicesState value, $Res Function(OwnerInvoicesState) then) =
      _$OwnerInvoicesStateCopyWithImpl<$Res, OwnerInvoicesState>;
  @useResult
  $Res call(
      {RequestState getInvoicesState,
      List<InvoiceModel> invoices,
      int page,
      int selectedTab});
}

/// @nodoc
class _$OwnerInvoicesStateCopyWithImpl<$Res, $Val extends OwnerInvoicesState>
    implements $OwnerInvoicesStateCopyWith<$Res> {
  _$OwnerInvoicesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getInvoicesState = null,
    Object? invoices = null,
    Object? page = null,
    Object? selectedTab = null,
  }) {
    return _then(_value.copyWith(
      getInvoicesState: null == getInvoicesState
          ? _value.getInvoicesState
          : getInvoicesState // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $OwnerInvoicesStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState getInvoicesState,
      List<InvoiceModel> invoices,
      int page,
      int selectedTab});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OwnerInvoicesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getInvoicesState = null,
    Object? invoices = null,
    Object? page = null,
    Object? selectedTab = null,
  }) {
    return _then(_$InitialImpl(
      getInvoicesState: null == getInvoicesState
          ? _value.getInvoicesState
          : getInvoicesState // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.getInvoicesState = RequestState.loading,
      final List<InvoiceModel> invoices = const [],
      this.page = 1,
      this.selectedTab = 1})
      : _invoices = invoices;

  @override
  @JsonKey()
  final RequestState getInvoicesState;
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
  String toString() {
    return 'OwnerInvoicesState(getInvoicesState: $getInvoicesState, invoices: $invoices, page: $page, selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.getInvoicesState, getInvoicesState) ||
                other.getInvoicesState == getInvoicesState) &&
            const DeepCollectionEquality().equals(other._invoices, _invoices) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getInvoicesState,
      const DeepCollectionEquality().hash(_invoices), page, selectedTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements OwnerInvoicesState {
  const factory _Initial(
      {final RequestState getInvoicesState,
      final List<InvoiceModel> invoices,
      final int page,
      final int selectedTab}) = _$InitialImpl;

  @override
  RequestState get getInvoicesState;
  @override
  List<InvoiceModel> get invoices;
  @override
  int get page;
  @override
  int get selectedTab;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
