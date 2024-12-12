// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState<T> {
  AuthModel? get authModel => throw _privateConstructorUsedError;
  RequestState get loginRequestState => throw _privateConstructorUsedError;
  bool get phoneNumberFocus => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<T, AuthState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<T, $Res> {
  factory $AuthStateCopyWith(
          AuthState<T> value, $Res Function(AuthState<T>) then) =
      _$AuthStateCopyWithImpl<T, $Res, AuthState<T>>;
  @useResult
  $Res call(
      {AuthModel? authModel,
      RequestState loginRequestState,
      bool phoneNumberFocus});
}

/// @nodoc
class _$AuthStateCopyWithImpl<T, $Res, $Val extends AuthState<T>>
    implements $AuthStateCopyWith<T, $Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authModel = freezed,
    Object? loginRequestState = null,
    Object? phoneNumberFocus = null,
  }) {
    return _then(_value.copyWith(
      authModel: freezed == authModel
          ? _value.authModel
          : authModel // ignore: cast_nullable_to_non_nullable
              as AuthModel?,
      loginRequestState: null == loginRequestState
          ? _value.loginRequestState
          : loginRequestState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      phoneNumberFocus: null == phoneNumberFocus
          ? _value.phoneNumberFocus
          : phoneNumberFocus // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res>
    implements $AuthStateCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {AuthModel? authModel,
      RequestState loginRequestState,
      bool phoneNumberFocus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authModel = freezed,
    Object? loginRequestState = null,
    Object? phoneNumberFocus = null,
  }) {
    return _then(_$InitialImpl<T>(
      authModel: freezed == authModel
          ? _value.authModel
          : authModel // ignore: cast_nullable_to_non_nullable
              as AuthModel?,
      loginRequestState: null == loginRequestState
          ? _value.loginRequestState
          : loginRequestState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      phoneNumberFocus: null == phoneNumberFocus
          ? _value.phoneNumberFocus
          : phoneNumberFocus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl(
      {this.authModel,
      this.loginRequestState = RequestState.initial,
      this.phoneNumberFocus = false});

  @override
  final AuthModel? authModel;
  @override
  @JsonKey()
  final RequestState loginRequestState;
  @override
  @JsonKey()
  final bool phoneNumberFocus;

  @override
  String toString() {
    return 'AuthState<$T>(authModel: $authModel, loginRequestState: $loginRequestState, phoneNumberFocus: $phoneNumberFocus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl<T> &&
            (identical(other.authModel, authModel) ||
                other.authModel == authModel) &&
            (identical(other.loginRequestState, loginRequestState) ||
                other.loginRequestState == loginRequestState) &&
            (identical(other.phoneNumberFocus, phoneNumberFocus) ||
                other.phoneNumberFocus == phoneNumberFocus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, authModel, loginRequestState, phoneNumberFocus);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<T, _$InitialImpl<T>> get copyWith =>
      __$$InitialImplCopyWithImpl<T, _$InitialImpl<T>>(this, _$identity);
}

abstract class _Initial<T> implements AuthState<T> {
  const factory _Initial(
      {final AuthModel? authModel,
      final RequestState loginRequestState,
      final bool phoneNumberFocus}) = _$InitialImpl<T>;

  @override
  AuthModel? get authModel;
  @override
  RequestState get loginRequestState;
  @override
  bool get phoneNumberFocus;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<T, _$InitialImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
