// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UnitDetailsState {
  RequestState get getUnitDetailsState => throw _privateConstructorUsedError;
  UnitDetailsModel? get unitDetailsModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnitDetailsStateCopyWith<UnitDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitDetailsStateCopyWith<$Res> {
  factory $UnitDetailsStateCopyWith(
          UnitDetailsState value, $Res Function(UnitDetailsState) then) =
      _$UnitDetailsStateCopyWithImpl<$Res, UnitDetailsState>;
  @useResult
  $Res call(
      {RequestState getUnitDetailsState, UnitDetailsModel? unitDetailsModel});
}

/// @nodoc
class _$UnitDetailsStateCopyWithImpl<$Res, $Val extends UnitDetailsState>
    implements $UnitDetailsStateCopyWith<$Res> {
  _$UnitDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getUnitDetailsState = null,
    Object? unitDetailsModel = freezed,
  }) {
    return _then(_value.copyWith(
      getUnitDetailsState: null == getUnitDetailsState
          ? _value.getUnitDetailsState
          : getUnitDetailsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      unitDetailsModel: freezed == unitDetailsModel
          ? _value.unitDetailsModel
          : unitDetailsModel // ignore: cast_nullable_to_non_nullable
              as UnitDetailsModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UnitDetailsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState getUnitDetailsState, UnitDetailsModel? unitDetailsModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UnitDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getUnitDetailsState = null,
    Object? unitDetailsModel = freezed,
  }) {
    return _then(_$InitialImpl(
      getUnitDetailsState: null == getUnitDetailsState
          ? _value.getUnitDetailsState
          : getUnitDetailsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      unitDetailsModel: freezed == unitDetailsModel
          ? _value.unitDetailsModel
          : unitDetailsModel // ignore: cast_nullable_to_non_nullable
              as UnitDetailsModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.getUnitDetailsState = RequestState.loading, this.unitDetailsModel});

  @override
  @JsonKey()
  final RequestState getUnitDetailsState;
  @override
  final UnitDetailsModel? unitDetailsModel;

  @override
  String toString() {
    return 'UnitDetailsState(getUnitDetailsState: $getUnitDetailsState, unitDetailsModel: $unitDetailsModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.getUnitDetailsState, getUnitDetailsState) ||
                other.getUnitDetailsState == getUnitDetailsState) &&
            (identical(other.unitDetailsModel, unitDetailsModel) ||
                other.unitDetailsModel == unitDetailsModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, getUnitDetailsState, unitDetailsModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements UnitDetailsState {
  const factory _Initial(
      {final RequestState getUnitDetailsState,
      final UnitDetailsModel? unitDetailsModel}) = _$InitialImpl;

  @override
  RequestState get getUnitDetailsState;
  @override
  UnitDetailsModel? get unitDetailsModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
