// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() getAllUnitsLoading,
    required TResult Function(List<Units> response) getAllUnitsSuccess,
    required TResult Function(String error) getAllUnitsError,
    required TResult Function() changeSelectedUnitLoading,
    required TResult Function(Units unit) changeSelectedUnitSuccess,
    required TResult Function() resetAllLoading,
    required TResult Function() resetAllSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? getAllUnitsLoading,
    TResult? Function(List<Units> response)? getAllUnitsSuccess,
    TResult? Function(String error)? getAllUnitsError,
    TResult? Function()? changeSelectedUnitLoading,
    TResult? Function(Units unit)? changeSelectedUnitSuccess,
    TResult? Function()? resetAllLoading,
    TResult? Function()? resetAllSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? getAllUnitsLoading,
    TResult Function(List<Units> response)? getAllUnitsSuccess,
    TResult Function(String error)? getAllUnitsError,
    TResult Function()? changeSelectedUnitLoading,
    TResult Function(Units unit)? changeSelectedUnitSuccess,
    TResult Function()? resetAllLoading,
    TResult Function()? resetAllSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(GetAllUnitsLoading<T> value) getAllUnitsLoading,
    required TResult Function(GetAllUnitsSuccess<T> value) getAllUnitsSuccess,
    required TResult Function(GetAllUnitsError<T> value) getAllUnitsError,
    required TResult Function(ChangeSelectedUnitLoading<T> value)
        changeSelectedUnitLoading,
    required TResult Function(ChangeSelectedUnitSuccess<T> value)
        changeSelectedUnitSuccess,
    required TResult Function(ResetAllLoading<T> value) resetAllLoading,
    required TResult Function(ResetAllSuccess<T> value) resetAllSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(GetAllUnitsLoading<T> value)? getAllUnitsLoading,
    TResult? Function(GetAllUnitsSuccess<T> value)? getAllUnitsSuccess,
    TResult? Function(GetAllUnitsError<T> value)? getAllUnitsError,
    TResult? Function(ChangeSelectedUnitLoading<T> value)?
        changeSelectedUnitLoading,
    TResult? Function(ChangeSelectedUnitSuccess<T> value)?
        changeSelectedUnitSuccess,
    TResult? Function(ResetAllLoading<T> value)? resetAllLoading,
    TResult? Function(ResetAllSuccess<T> value)? resetAllSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(GetAllUnitsLoading<T> value)? getAllUnitsLoading,
    TResult Function(GetAllUnitsSuccess<T> value)? getAllUnitsSuccess,
    TResult Function(GetAllUnitsError<T> value)? getAllUnitsError,
    TResult Function(ChangeSelectedUnitLoading<T> value)?
        changeSelectedUnitLoading,
    TResult Function(ChangeSelectedUnitSuccess<T> value)?
        changeSelectedUnitSuccess,
    TResult Function(ResetAllLoading<T> value)? resetAllLoading,
    TResult Function(ResetAllSuccess<T> value)? resetAllSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdleImplCopyWith<T, $Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl<T> value, $Res Function(_$IdleImpl<T>) then) =
      __$$IdleImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$IdleImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$IdleImpl<T>>
    implements _$$IdleImplCopyWith<T, $Res> {
  __$$IdleImplCopyWithImpl(
      _$IdleImpl<T> _value, $Res Function(_$IdleImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IdleImpl<T> implements Idle<T> {
  const _$IdleImpl();

  @override
  String toString() {
    return 'HomeState<$T>.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() getAllUnitsLoading,
    required TResult Function(List<Units> response) getAllUnitsSuccess,
    required TResult Function(String error) getAllUnitsError,
    required TResult Function() changeSelectedUnitLoading,
    required TResult Function(Units unit) changeSelectedUnitSuccess,
    required TResult Function() resetAllLoading,
    required TResult Function() resetAllSuccess,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? getAllUnitsLoading,
    TResult? Function(List<Units> response)? getAllUnitsSuccess,
    TResult? Function(String error)? getAllUnitsError,
    TResult? Function()? changeSelectedUnitLoading,
    TResult? Function(Units unit)? changeSelectedUnitSuccess,
    TResult? Function()? resetAllLoading,
    TResult? Function()? resetAllSuccess,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? getAllUnitsLoading,
    TResult Function(List<Units> response)? getAllUnitsSuccess,
    TResult Function(String error)? getAllUnitsError,
    TResult Function()? changeSelectedUnitLoading,
    TResult Function(Units unit)? changeSelectedUnitSuccess,
    TResult Function()? resetAllLoading,
    TResult Function()? resetAllSuccess,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(GetAllUnitsLoading<T> value) getAllUnitsLoading,
    required TResult Function(GetAllUnitsSuccess<T> value) getAllUnitsSuccess,
    required TResult Function(GetAllUnitsError<T> value) getAllUnitsError,
    required TResult Function(ChangeSelectedUnitLoading<T> value)
        changeSelectedUnitLoading,
    required TResult Function(ChangeSelectedUnitSuccess<T> value)
        changeSelectedUnitSuccess,
    required TResult Function(ResetAllLoading<T> value) resetAllLoading,
    required TResult Function(ResetAllSuccess<T> value) resetAllSuccess,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(GetAllUnitsLoading<T> value)? getAllUnitsLoading,
    TResult? Function(GetAllUnitsSuccess<T> value)? getAllUnitsSuccess,
    TResult? Function(GetAllUnitsError<T> value)? getAllUnitsError,
    TResult? Function(ChangeSelectedUnitLoading<T> value)?
        changeSelectedUnitLoading,
    TResult? Function(ChangeSelectedUnitSuccess<T> value)?
        changeSelectedUnitSuccess,
    TResult? Function(ResetAllLoading<T> value)? resetAllLoading,
    TResult? Function(ResetAllSuccess<T> value)? resetAllSuccess,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(GetAllUnitsLoading<T> value)? getAllUnitsLoading,
    TResult Function(GetAllUnitsSuccess<T> value)? getAllUnitsSuccess,
    TResult Function(GetAllUnitsError<T> value)? getAllUnitsError,
    TResult Function(ChangeSelectedUnitLoading<T> value)?
        changeSelectedUnitLoading,
    TResult Function(ChangeSelectedUnitSuccess<T> value)?
        changeSelectedUnitSuccess,
    TResult Function(ResetAllLoading<T> value)? resetAllLoading,
    TResult Function(ResetAllSuccess<T> value)? resetAllSuccess,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle<T> implements HomeState<T> {
  const factory Idle() = _$IdleImpl<T>;
}

/// @nodoc
abstract class _$$GetAllUnitsLoadingImplCopyWith<T, $Res> {
  factory _$$GetAllUnitsLoadingImplCopyWith(_$GetAllUnitsLoadingImpl<T> value,
          $Res Function(_$GetAllUnitsLoadingImpl<T>) then) =
      __$$GetAllUnitsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetAllUnitsLoadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$GetAllUnitsLoadingImpl<T>>
    implements _$$GetAllUnitsLoadingImplCopyWith<T, $Res> {
  __$$GetAllUnitsLoadingImplCopyWithImpl(_$GetAllUnitsLoadingImpl<T> _value,
      $Res Function(_$GetAllUnitsLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllUnitsLoadingImpl<T> implements GetAllUnitsLoading<T> {
  const _$GetAllUnitsLoadingImpl();

  @override
  String toString() {
    return 'HomeState<$T>.getAllUnitsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllUnitsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() getAllUnitsLoading,
    required TResult Function(List<Units> response) getAllUnitsSuccess,
    required TResult Function(String error) getAllUnitsError,
    required TResult Function() changeSelectedUnitLoading,
    required TResult Function(Units unit) changeSelectedUnitSuccess,
    required TResult Function() resetAllLoading,
    required TResult Function() resetAllSuccess,
  }) {
    return getAllUnitsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? getAllUnitsLoading,
    TResult? Function(List<Units> response)? getAllUnitsSuccess,
    TResult? Function(String error)? getAllUnitsError,
    TResult? Function()? changeSelectedUnitLoading,
    TResult? Function(Units unit)? changeSelectedUnitSuccess,
    TResult? Function()? resetAllLoading,
    TResult? Function()? resetAllSuccess,
  }) {
    return getAllUnitsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? getAllUnitsLoading,
    TResult Function(List<Units> response)? getAllUnitsSuccess,
    TResult Function(String error)? getAllUnitsError,
    TResult Function()? changeSelectedUnitLoading,
    TResult Function(Units unit)? changeSelectedUnitSuccess,
    TResult Function()? resetAllLoading,
    TResult Function()? resetAllSuccess,
    required TResult orElse(),
  }) {
    if (getAllUnitsLoading != null) {
      return getAllUnitsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(GetAllUnitsLoading<T> value) getAllUnitsLoading,
    required TResult Function(GetAllUnitsSuccess<T> value) getAllUnitsSuccess,
    required TResult Function(GetAllUnitsError<T> value) getAllUnitsError,
    required TResult Function(ChangeSelectedUnitLoading<T> value)
        changeSelectedUnitLoading,
    required TResult Function(ChangeSelectedUnitSuccess<T> value)
        changeSelectedUnitSuccess,
    required TResult Function(ResetAllLoading<T> value) resetAllLoading,
    required TResult Function(ResetAllSuccess<T> value) resetAllSuccess,
  }) {
    return getAllUnitsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(GetAllUnitsLoading<T> value)? getAllUnitsLoading,
    TResult? Function(GetAllUnitsSuccess<T> value)? getAllUnitsSuccess,
    TResult? Function(GetAllUnitsError<T> value)? getAllUnitsError,
    TResult? Function(ChangeSelectedUnitLoading<T> value)?
        changeSelectedUnitLoading,
    TResult? Function(ChangeSelectedUnitSuccess<T> value)?
        changeSelectedUnitSuccess,
    TResult? Function(ResetAllLoading<T> value)? resetAllLoading,
    TResult? Function(ResetAllSuccess<T> value)? resetAllSuccess,
  }) {
    return getAllUnitsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(GetAllUnitsLoading<T> value)? getAllUnitsLoading,
    TResult Function(GetAllUnitsSuccess<T> value)? getAllUnitsSuccess,
    TResult Function(GetAllUnitsError<T> value)? getAllUnitsError,
    TResult Function(ChangeSelectedUnitLoading<T> value)?
        changeSelectedUnitLoading,
    TResult Function(ChangeSelectedUnitSuccess<T> value)?
        changeSelectedUnitSuccess,
    TResult Function(ResetAllLoading<T> value)? resetAllLoading,
    TResult Function(ResetAllSuccess<T> value)? resetAllSuccess,
    required TResult orElse(),
  }) {
    if (getAllUnitsLoading != null) {
      return getAllUnitsLoading(this);
    }
    return orElse();
  }
}

abstract class GetAllUnitsLoading<T> implements HomeState<T> {
  const factory GetAllUnitsLoading() = _$GetAllUnitsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$GetAllUnitsSuccessImplCopyWith<T, $Res> {
  factory _$$GetAllUnitsSuccessImplCopyWith(_$GetAllUnitsSuccessImpl<T> value,
          $Res Function(_$GetAllUnitsSuccessImpl<T>) then) =
      __$$GetAllUnitsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<Units> response});
}

/// @nodoc
class __$$GetAllUnitsSuccessImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$GetAllUnitsSuccessImpl<T>>
    implements _$$GetAllUnitsSuccessImplCopyWith<T, $Res> {
  __$$GetAllUnitsSuccessImplCopyWithImpl(_$GetAllUnitsSuccessImpl<T> _value,
      $Res Function(_$GetAllUnitsSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$GetAllUnitsSuccessImpl<T>(
      null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<Units>,
    ));
  }
}

/// @nodoc

class _$GetAllUnitsSuccessImpl<T> implements GetAllUnitsSuccess<T> {
  const _$GetAllUnitsSuccessImpl(final List<Units> response)
      : _response = response;

  final List<Units> _response;
  @override
  List<Units> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'HomeState<$T>.getAllUnitsSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllUnitsSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllUnitsSuccessImplCopyWith<T, _$GetAllUnitsSuccessImpl<T>>
      get copyWith => __$$GetAllUnitsSuccessImplCopyWithImpl<T,
          _$GetAllUnitsSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() getAllUnitsLoading,
    required TResult Function(List<Units> response) getAllUnitsSuccess,
    required TResult Function(String error) getAllUnitsError,
    required TResult Function() changeSelectedUnitLoading,
    required TResult Function(Units unit) changeSelectedUnitSuccess,
    required TResult Function() resetAllLoading,
    required TResult Function() resetAllSuccess,
  }) {
    return getAllUnitsSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? getAllUnitsLoading,
    TResult? Function(List<Units> response)? getAllUnitsSuccess,
    TResult? Function(String error)? getAllUnitsError,
    TResult? Function()? changeSelectedUnitLoading,
    TResult? Function(Units unit)? changeSelectedUnitSuccess,
    TResult? Function()? resetAllLoading,
    TResult? Function()? resetAllSuccess,
  }) {
    return getAllUnitsSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? getAllUnitsLoading,
    TResult Function(List<Units> response)? getAllUnitsSuccess,
    TResult Function(String error)? getAllUnitsError,
    TResult Function()? changeSelectedUnitLoading,
    TResult Function(Units unit)? changeSelectedUnitSuccess,
    TResult Function()? resetAllLoading,
    TResult Function()? resetAllSuccess,
    required TResult orElse(),
  }) {
    if (getAllUnitsSuccess != null) {
      return getAllUnitsSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(GetAllUnitsLoading<T> value) getAllUnitsLoading,
    required TResult Function(GetAllUnitsSuccess<T> value) getAllUnitsSuccess,
    required TResult Function(GetAllUnitsError<T> value) getAllUnitsError,
    required TResult Function(ChangeSelectedUnitLoading<T> value)
        changeSelectedUnitLoading,
    required TResult Function(ChangeSelectedUnitSuccess<T> value)
        changeSelectedUnitSuccess,
    required TResult Function(ResetAllLoading<T> value) resetAllLoading,
    required TResult Function(ResetAllSuccess<T> value) resetAllSuccess,
  }) {
    return getAllUnitsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(GetAllUnitsLoading<T> value)? getAllUnitsLoading,
    TResult? Function(GetAllUnitsSuccess<T> value)? getAllUnitsSuccess,
    TResult? Function(GetAllUnitsError<T> value)? getAllUnitsError,
    TResult? Function(ChangeSelectedUnitLoading<T> value)?
        changeSelectedUnitLoading,
    TResult? Function(ChangeSelectedUnitSuccess<T> value)?
        changeSelectedUnitSuccess,
    TResult? Function(ResetAllLoading<T> value)? resetAllLoading,
    TResult? Function(ResetAllSuccess<T> value)? resetAllSuccess,
  }) {
    return getAllUnitsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(GetAllUnitsLoading<T> value)? getAllUnitsLoading,
    TResult Function(GetAllUnitsSuccess<T> value)? getAllUnitsSuccess,
    TResult Function(GetAllUnitsError<T> value)? getAllUnitsError,
    TResult Function(ChangeSelectedUnitLoading<T> value)?
        changeSelectedUnitLoading,
    TResult Function(ChangeSelectedUnitSuccess<T> value)?
        changeSelectedUnitSuccess,
    TResult Function(ResetAllLoading<T> value)? resetAllLoading,
    TResult Function(ResetAllSuccess<T> value)? resetAllSuccess,
    required TResult orElse(),
  }) {
    if (getAllUnitsSuccess != null) {
      return getAllUnitsSuccess(this);
    }
    return orElse();
  }
}

abstract class GetAllUnitsSuccess<T> implements HomeState<T> {
  const factory GetAllUnitsSuccess(final List<Units> response) =
      _$GetAllUnitsSuccessImpl<T>;

  List<Units> get response;
  @JsonKey(ignore: true)
  _$$GetAllUnitsSuccessImplCopyWith<T, _$GetAllUnitsSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllUnitsErrorImplCopyWith<T, $Res> {
  factory _$$GetAllUnitsErrorImplCopyWith(_$GetAllUnitsErrorImpl<T> value,
          $Res Function(_$GetAllUnitsErrorImpl<T>) then) =
      __$$GetAllUnitsErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetAllUnitsErrorImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$GetAllUnitsErrorImpl<T>>
    implements _$$GetAllUnitsErrorImplCopyWith<T, $Res> {
  __$$GetAllUnitsErrorImplCopyWithImpl(_$GetAllUnitsErrorImpl<T> _value,
      $Res Function(_$GetAllUnitsErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetAllUnitsErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllUnitsErrorImpl<T> implements GetAllUnitsError<T> {
  const _$GetAllUnitsErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'HomeState<$T>.getAllUnitsError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllUnitsErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllUnitsErrorImplCopyWith<T, _$GetAllUnitsErrorImpl<T>> get copyWith =>
      __$$GetAllUnitsErrorImplCopyWithImpl<T, _$GetAllUnitsErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() getAllUnitsLoading,
    required TResult Function(List<Units> response) getAllUnitsSuccess,
    required TResult Function(String error) getAllUnitsError,
    required TResult Function() changeSelectedUnitLoading,
    required TResult Function(Units unit) changeSelectedUnitSuccess,
    required TResult Function() resetAllLoading,
    required TResult Function() resetAllSuccess,
  }) {
    return getAllUnitsError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? getAllUnitsLoading,
    TResult? Function(List<Units> response)? getAllUnitsSuccess,
    TResult? Function(String error)? getAllUnitsError,
    TResult? Function()? changeSelectedUnitLoading,
    TResult? Function(Units unit)? changeSelectedUnitSuccess,
    TResult? Function()? resetAllLoading,
    TResult? Function()? resetAllSuccess,
  }) {
    return getAllUnitsError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? getAllUnitsLoading,
    TResult Function(List<Units> response)? getAllUnitsSuccess,
    TResult Function(String error)? getAllUnitsError,
    TResult Function()? changeSelectedUnitLoading,
    TResult Function(Units unit)? changeSelectedUnitSuccess,
    TResult Function()? resetAllLoading,
    TResult Function()? resetAllSuccess,
    required TResult orElse(),
  }) {
    if (getAllUnitsError != null) {
      return getAllUnitsError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(GetAllUnitsLoading<T> value) getAllUnitsLoading,
    required TResult Function(GetAllUnitsSuccess<T> value) getAllUnitsSuccess,
    required TResult Function(GetAllUnitsError<T> value) getAllUnitsError,
    required TResult Function(ChangeSelectedUnitLoading<T> value)
        changeSelectedUnitLoading,
    required TResult Function(ChangeSelectedUnitSuccess<T> value)
        changeSelectedUnitSuccess,
    required TResult Function(ResetAllLoading<T> value) resetAllLoading,
    required TResult Function(ResetAllSuccess<T> value) resetAllSuccess,
  }) {
    return getAllUnitsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(GetAllUnitsLoading<T> value)? getAllUnitsLoading,
    TResult? Function(GetAllUnitsSuccess<T> value)? getAllUnitsSuccess,
    TResult? Function(GetAllUnitsError<T> value)? getAllUnitsError,
    TResult? Function(ChangeSelectedUnitLoading<T> value)?
        changeSelectedUnitLoading,
    TResult? Function(ChangeSelectedUnitSuccess<T> value)?
        changeSelectedUnitSuccess,
    TResult? Function(ResetAllLoading<T> value)? resetAllLoading,
    TResult? Function(ResetAllSuccess<T> value)? resetAllSuccess,
  }) {
    return getAllUnitsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(GetAllUnitsLoading<T> value)? getAllUnitsLoading,
    TResult Function(GetAllUnitsSuccess<T> value)? getAllUnitsSuccess,
    TResult Function(GetAllUnitsError<T> value)? getAllUnitsError,
    TResult Function(ChangeSelectedUnitLoading<T> value)?
        changeSelectedUnitLoading,
    TResult Function(ChangeSelectedUnitSuccess<T> value)?
        changeSelectedUnitSuccess,
    TResult Function(ResetAllLoading<T> value)? resetAllLoading,
    TResult Function(ResetAllSuccess<T> value)? resetAllSuccess,
    required TResult orElse(),
  }) {
    if (getAllUnitsError != null) {
      return getAllUnitsError(this);
    }
    return orElse();
  }
}

abstract class GetAllUnitsError<T> implements HomeState<T> {
  const factory GetAllUnitsError(final String error) =
      _$GetAllUnitsErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$GetAllUnitsErrorImplCopyWith<T, _$GetAllUnitsErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSelectedUnitLoadingImplCopyWith<T, $Res> {
  factory _$$ChangeSelectedUnitLoadingImplCopyWith(
          _$ChangeSelectedUnitLoadingImpl<T> value,
          $Res Function(_$ChangeSelectedUnitLoadingImpl<T>) then) =
      __$$ChangeSelectedUnitLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ChangeSelectedUnitLoadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$ChangeSelectedUnitLoadingImpl<T>>
    implements _$$ChangeSelectedUnitLoadingImplCopyWith<T, $Res> {
  __$$ChangeSelectedUnitLoadingImplCopyWithImpl(
      _$ChangeSelectedUnitLoadingImpl<T> _value,
      $Res Function(_$ChangeSelectedUnitLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeSelectedUnitLoadingImpl<T>
    implements ChangeSelectedUnitLoading<T> {
  const _$ChangeSelectedUnitLoadingImpl();

  @override
  String toString() {
    return 'HomeState<$T>.changeSelectedUnitLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSelectedUnitLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() getAllUnitsLoading,
    required TResult Function(List<Units> response) getAllUnitsSuccess,
    required TResult Function(String error) getAllUnitsError,
    required TResult Function() changeSelectedUnitLoading,
    required TResult Function(Units unit) changeSelectedUnitSuccess,
    required TResult Function() resetAllLoading,
    required TResult Function() resetAllSuccess,
  }) {
    return changeSelectedUnitLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? getAllUnitsLoading,
    TResult? Function(List<Units> response)? getAllUnitsSuccess,
    TResult? Function(String error)? getAllUnitsError,
    TResult? Function()? changeSelectedUnitLoading,
    TResult? Function(Units unit)? changeSelectedUnitSuccess,
    TResult? Function()? resetAllLoading,
    TResult? Function()? resetAllSuccess,
  }) {
    return changeSelectedUnitLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? getAllUnitsLoading,
    TResult Function(List<Units> response)? getAllUnitsSuccess,
    TResult Function(String error)? getAllUnitsError,
    TResult Function()? changeSelectedUnitLoading,
    TResult Function(Units unit)? changeSelectedUnitSuccess,
    TResult Function()? resetAllLoading,
    TResult Function()? resetAllSuccess,
    required TResult orElse(),
  }) {
    if (changeSelectedUnitLoading != null) {
      return changeSelectedUnitLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(GetAllUnitsLoading<T> value) getAllUnitsLoading,
    required TResult Function(GetAllUnitsSuccess<T> value) getAllUnitsSuccess,
    required TResult Function(GetAllUnitsError<T> value) getAllUnitsError,
    required TResult Function(ChangeSelectedUnitLoading<T> value)
        changeSelectedUnitLoading,
    required TResult Function(ChangeSelectedUnitSuccess<T> value)
        changeSelectedUnitSuccess,
    required TResult Function(ResetAllLoading<T> value) resetAllLoading,
    required TResult Function(ResetAllSuccess<T> value) resetAllSuccess,
  }) {
    return changeSelectedUnitLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(GetAllUnitsLoading<T> value)? getAllUnitsLoading,
    TResult? Function(GetAllUnitsSuccess<T> value)? getAllUnitsSuccess,
    TResult? Function(GetAllUnitsError<T> value)? getAllUnitsError,
    TResult? Function(ChangeSelectedUnitLoading<T> value)?
        changeSelectedUnitLoading,
    TResult? Function(ChangeSelectedUnitSuccess<T> value)?
        changeSelectedUnitSuccess,
    TResult? Function(ResetAllLoading<T> value)? resetAllLoading,
    TResult? Function(ResetAllSuccess<T> value)? resetAllSuccess,
  }) {
    return changeSelectedUnitLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(GetAllUnitsLoading<T> value)? getAllUnitsLoading,
    TResult Function(GetAllUnitsSuccess<T> value)? getAllUnitsSuccess,
    TResult Function(GetAllUnitsError<T> value)? getAllUnitsError,
    TResult Function(ChangeSelectedUnitLoading<T> value)?
        changeSelectedUnitLoading,
    TResult Function(ChangeSelectedUnitSuccess<T> value)?
        changeSelectedUnitSuccess,
    TResult Function(ResetAllLoading<T> value)? resetAllLoading,
    TResult Function(ResetAllSuccess<T> value)? resetAllSuccess,
    required TResult orElse(),
  }) {
    if (changeSelectedUnitLoading != null) {
      return changeSelectedUnitLoading(this);
    }
    return orElse();
  }
}

abstract class ChangeSelectedUnitLoading<T> implements HomeState<T> {
  const factory ChangeSelectedUnitLoading() =
      _$ChangeSelectedUnitLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ChangeSelectedUnitSuccessImplCopyWith<T, $Res> {
  factory _$$ChangeSelectedUnitSuccessImplCopyWith(
          _$ChangeSelectedUnitSuccessImpl<T> value,
          $Res Function(_$ChangeSelectedUnitSuccessImpl<T>) then) =
      __$$ChangeSelectedUnitSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Units unit});
}

/// @nodoc
class __$$ChangeSelectedUnitSuccessImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$ChangeSelectedUnitSuccessImpl<T>>
    implements _$$ChangeSelectedUnitSuccessImplCopyWith<T, $Res> {
  __$$ChangeSelectedUnitSuccessImplCopyWithImpl(
      _$ChangeSelectedUnitSuccessImpl<T> _value,
      $Res Function(_$ChangeSelectedUnitSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
  }) {
    return _then(_$ChangeSelectedUnitSuccessImpl<T>(
      null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Units,
    ));
  }
}

/// @nodoc

class _$ChangeSelectedUnitSuccessImpl<T>
    implements ChangeSelectedUnitSuccess<T> {
  const _$ChangeSelectedUnitSuccessImpl(this.unit);

  @override
  final Units unit;

  @override
  String toString() {
    return 'HomeState<$T>.changeSelectedUnitSuccess(unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSelectedUnitSuccessImpl<T> &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSelectedUnitSuccessImplCopyWith<T,
          _$ChangeSelectedUnitSuccessImpl<T>>
      get copyWith => __$$ChangeSelectedUnitSuccessImplCopyWithImpl<T,
          _$ChangeSelectedUnitSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() getAllUnitsLoading,
    required TResult Function(List<Units> response) getAllUnitsSuccess,
    required TResult Function(String error) getAllUnitsError,
    required TResult Function() changeSelectedUnitLoading,
    required TResult Function(Units unit) changeSelectedUnitSuccess,
    required TResult Function() resetAllLoading,
    required TResult Function() resetAllSuccess,
  }) {
    return changeSelectedUnitSuccess(unit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? getAllUnitsLoading,
    TResult? Function(List<Units> response)? getAllUnitsSuccess,
    TResult? Function(String error)? getAllUnitsError,
    TResult? Function()? changeSelectedUnitLoading,
    TResult? Function(Units unit)? changeSelectedUnitSuccess,
    TResult? Function()? resetAllLoading,
    TResult? Function()? resetAllSuccess,
  }) {
    return changeSelectedUnitSuccess?.call(unit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? getAllUnitsLoading,
    TResult Function(List<Units> response)? getAllUnitsSuccess,
    TResult Function(String error)? getAllUnitsError,
    TResult Function()? changeSelectedUnitLoading,
    TResult Function(Units unit)? changeSelectedUnitSuccess,
    TResult Function()? resetAllLoading,
    TResult Function()? resetAllSuccess,
    required TResult orElse(),
  }) {
    if (changeSelectedUnitSuccess != null) {
      return changeSelectedUnitSuccess(unit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(GetAllUnitsLoading<T> value) getAllUnitsLoading,
    required TResult Function(GetAllUnitsSuccess<T> value) getAllUnitsSuccess,
    required TResult Function(GetAllUnitsError<T> value) getAllUnitsError,
    required TResult Function(ChangeSelectedUnitLoading<T> value)
        changeSelectedUnitLoading,
    required TResult Function(ChangeSelectedUnitSuccess<T> value)
        changeSelectedUnitSuccess,
    required TResult Function(ResetAllLoading<T> value) resetAllLoading,
    required TResult Function(ResetAllSuccess<T> value) resetAllSuccess,
  }) {
    return changeSelectedUnitSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(GetAllUnitsLoading<T> value)? getAllUnitsLoading,
    TResult? Function(GetAllUnitsSuccess<T> value)? getAllUnitsSuccess,
    TResult? Function(GetAllUnitsError<T> value)? getAllUnitsError,
    TResult? Function(ChangeSelectedUnitLoading<T> value)?
        changeSelectedUnitLoading,
    TResult? Function(ChangeSelectedUnitSuccess<T> value)?
        changeSelectedUnitSuccess,
    TResult? Function(ResetAllLoading<T> value)? resetAllLoading,
    TResult? Function(ResetAllSuccess<T> value)? resetAllSuccess,
  }) {
    return changeSelectedUnitSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(GetAllUnitsLoading<T> value)? getAllUnitsLoading,
    TResult Function(GetAllUnitsSuccess<T> value)? getAllUnitsSuccess,
    TResult Function(GetAllUnitsError<T> value)? getAllUnitsError,
    TResult Function(ChangeSelectedUnitLoading<T> value)?
        changeSelectedUnitLoading,
    TResult Function(ChangeSelectedUnitSuccess<T> value)?
        changeSelectedUnitSuccess,
    TResult Function(ResetAllLoading<T> value)? resetAllLoading,
    TResult Function(ResetAllSuccess<T> value)? resetAllSuccess,
    required TResult orElse(),
  }) {
    if (changeSelectedUnitSuccess != null) {
      return changeSelectedUnitSuccess(this);
    }
    return orElse();
  }
}

abstract class ChangeSelectedUnitSuccess<T> implements HomeState<T> {
  const factory ChangeSelectedUnitSuccess(final Units unit) =
      _$ChangeSelectedUnitSuccessImpl<T>;

  Units get unit;
  @JsonKey(ignore: true)
  _$$ChangeSelectedUnitSuccessImplCopyWith<T,
          _$ChangeSelectedUnitSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetAllLoadingImplCopyWith<T, $Res> {
  factory _$$ResetAllLoadingImplCopyWith(_$ResetAllLoadingImpl<T> value,
          $Res Function(_$ResetAllLoadingImpl<T>) then) =
      __$$ResetAllLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ResetAllLoadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$ResetAllLoadingImpl<T>>
    implements _$$ResetAllLoadingImplCopyWith<T, $Res> {
  __$$ResetAllLoadingImplCopyWithImpl(_$ResetAllLoadingImpl<T> _value,
      $Res Function(_$ResetAllLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetAllLoadingImpl<T> implements ResetAllLoading<T> {
  const _$ResetAllLoadingImpl();

  @override
  String toString() {
    return 'HomeState<$T>.resetAllLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetAllLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() getAllUnitsLoading,
    required TResult Function(List<Units> response) getAllUnitsSuccess,
    required TResult Function(String error) getAllUnitsError,
    required TResult Function() changeSelectedUnitLoading,
    required TResult Function(Units unit) changeSelectedUnitSuccess,
    required TResult Function() resetAllLoading,
    required TResult Function() resetAllSuccess,
  }) {
    return resetAllLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? getAllUnitsLoading,
    TResult? Function(List<Units> response)? getAllUnitsSuccess,
    TResult? Function(String error)? getAllUnitsError,
    TResult? Function()? changeSelectedUnitLoading,
    TResult? Function(Units unit)? changeSelectedUnitSuccess,
    TResult? Function()? resetAllLoading,
    TResult? Function()? resetAllSuccess,
  }) {
    return resetAllLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? getAllUnitsLoading,
    TResult Function(List<Units> response)? getAllUnitsSuccess,
    TResult Function(String error)? getAllUnitsError,
    TResult Function()? changeSelectedUnitLoading,
    TResult Function(Units unit)? changeSelectedUnitSuccess,
    TResult Function()? resetAllLoading,
    TResult Function()? resetAllSuccess,
    required TResult orElse(),
  }) {
    if (resetAllLoading != null) {
      return resetAllLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(GetAllUnitsLoading<T> value) getAllUnitsLoading,
    required TResult Function(GetAllUnitsSuccess<T> value) getAllUnitsSuccess,
    required TResult Function(GetAllUnitsError<T> value) getAllUnitsError,
    required TResult Function(ChangeSelectedUnitLoading<T> value)
        changeSelectedUnitLoading,
    required TResult Function(ChangeSelectedUnitSuccess<T> value)
        changeSelectedUnitSuccess,
    required TResult Function(ResetAllLoading<T> value) resetAllLoading,
    required TResult Function(ResetAllSuccess<T> value) resetAllSuccess,
  }) {
    return resetAllLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(GetAllUnitsLoading<T> value)? getAllUnitsLoading,
    TResult? Function(GetAllUnitsSuccess<T> value)? getAllUnitsSuccess,
    TResult? Function(GetAllUnitsError<T> value)? getAllUnitsError,
    TResult? Function(ChangeSelectedUnitLoading<T> value)?
        changeSelectedUnitLoading,
    TResult? Function(ChangeSelectedUnitSuccess<T> value)?
        changeSelectedUnitSuccess,
    TResult? Function(ResetAllLoading<T> value)? resetAllLoading,
    TResult? Function(ResetAllSuccess<T> value)? resetAllSuccess,
  }) {
    return resetAllLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(GetAllUnitsLoading<T> value)? getAllUnitsLoading,
    TResult Function(GetAllUnitsSuccess<T> value)? getAllUnitsSuccess,
    TResult Function(GetAllUnitsError<T> value)? getAllUnitsError,
    TResult Function(ChangeSelectedUnitLoading<T> value)?
        changeSelectedUnitLoading,
    TResult Function(ChangeSelectedUnitSuccess<T> value)?
        changeSelectedUnitSuccess,
    TResult Function(ResetAllLoading<T> value)? resetAllLoading,
    TResult Function(ResetAllSuccess<T> value)? resetAllSuccess,
    required TResult orElse(),
  }) {
    if (resetAllLoading != null) {
      return resetAllLoading(this);
    }
    return orElse();
  }
}

abstract class ResetAllLoading<T> implements HomeState<T> {
  const factory ResetAllLoading() = _$ResetAllLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ResetAllSuccessImplCopyWith<T, $Res> {
  factory _$$ResetAllSuccessImplCopyWith(_$ResetAllSuccessImpl<T> value,
          $Res Function(_$ResetAllSuccessImpl<T>) then) =
      __$$ResetAllSuccessImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ResetAllSuccessImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$ResetAllSuccessImpl<T>>
    implements _$$ResetAllSuccessImplCopyWith<T, $Res> {
  __$$ResetAllSuccessImplCopyWithImpl(_$ResetAllSuccessImpl<T> _value,
      $Res Function(_$ResetAllSuccessImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetAllSuccessImpl<T> implements ResetAllSuccess<T> {
  const _$ResetAllSuccessImpl();

  @override
  String toString() {
    return 'HomeState<$T>.resetAllSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetAllSuccessImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() getAllUnitsLoading,
    required TResult Function(List<Units> response) getAllUnitsSuccess,
    required TResult Function(String error) getAllUnitsError,
    required TResult Function() changeSelectedUnitLoading,
    required TResult Function(Units unit) changeSelectedUnitSuccess,
    required TResult Function() resetAllLoading,
    required TResult Function() resetAllSuccess,
  }) {
    return resetAllSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? getAllUnitsLoading,
    TResult? Function(List<Units> response)? getAllUnitsSuccess,
    TResult? Function(String error)? getAllUnitsError,
    TResult? Function()? changeSelectedUnitLoading,
    TResult? Function(Units unit)? changeSelectedUnitSuccess,
    TResult? Function()? resetAllLoading,
    TResult? Function()? resetAllSuccess,
  }) {
    return resetAllSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? getAllUnitsLoading,
    TResult Function(List<Units> response)? getAllUnitsSuccess,
    TResult Function(String error)? getAllUnitsError,
    TResult Function()? changeSelectedUnitLoading,
    TResult Function(Units unit)? changeSelectedUnitSuccess,
    TResult Function()? resetAllLoading,
    TResult Function()? resetAllSuccess,
    required TResult orElse(),
  }) {
    if (resetAllSuccess != null) {
      return resetAllSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(GetAllUnitsLoading<T> value) getAllUnitsLoading,
    required TResult Function(GetAllUnitsSuccess<T> value) getAllUnitsSuccess,
    required TResult Function(GetAllUnitsError<T> value) getAllUnitsError,
    required TResult Function(ChangeSelectedUnitLoading<T> value)
        changeSelectedUnitLoading,
    required TResult Function(ChangeSelectedUnitSuccess<T> value)
        changeSelectedUnitSuccess,
    required TResult Function(ResetAllLoading<T> value) resetAllLoading,
    required TResult Function(ResetAllSuccess<T> value) resetAllSuccess,
  }) {
    return resetAllSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(GetAllUnitsLoading<T> value)? getAllUnitsLoading,
    TResult? Function(GetAllUnitsSuccess<T> value)? getAllUnitsSuccess,
    TResult? Function(GetAllUnitsError<T> value)? getAllUnitsError,
    TResult? Function(ChangeSelectedUnitLoading<T> value)?
        changeSelectedUnitLoading,
    TResult? Function(ChangeSelectedUnitSuccess<T> value)?
        changeSelectedUnitSuccess,
    TResult? Function(ResetAllLoading<T> value)? resetAllLoading,
    TResult? Function(ResetAllSuccess<T> value)? resetAllSuccess,
  }) {
    return resetAllSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(GetAllUnitsLoading<T> value)? getAllUnitsLoading,
    TResult Function(GetAllUnitsSuccess<T> value)? getAllUnitsSuccess,
    TResult Function(GetAllUnitsError<T> value)? getAllUnitsError,
    TResult Function(ChangeSelectedUnitLoading<T> value)?
        changeSelectedUnitLoading,
    TResult Function(ChangeSelectedUnitSuccess<T> value)?
        changeSelectedUnitSuccess,
    TResult Function(ResetAllLoading<T> value)? resetAllLoading,
    TResult Function(ResetAllSuccess<T> value)? resetAllSuccess,
    required TResult orElse(),
  }) {
    if (resetAllSuccess != null) {
      return resetAllSuccess(this);
    }
    return orElse();
  }
}

abstract class ResetAllSuccess<T> implements HomeState<T> {
  const factory ResetAllSuccess() = _$ResetAllSuccessImpl<T>;
}
