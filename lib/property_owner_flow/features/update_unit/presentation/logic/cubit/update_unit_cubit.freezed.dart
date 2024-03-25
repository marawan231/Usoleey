// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_unit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateUnitState {
  RequestState get updateUnitState => throw _privateConstructorUsedError;
  int get roomsCount => throw _privateConstructorUsedError;
  int get conditionersCount => throw _privateConstructorUsedError;
  int get bathroomsCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateUnitStateCopyWith<UpdateUnitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUnitStateCopyWith<$Res> {
  factory $UpdateUnitStateCopyWith(
          UpdateUnitState value, $Res Function(UpdateUnitState) then) =
      _$UpdateUnitStateCopyWithImpl<$Res, UpdateUnitState>;
  @useResult
  $Res call(
      {RequestState updateUnitState,
      int roomsCount,
      int conditionersCount,
      int bathroomsCount});
}

/// @nodoc
class _$UpdateUnitStateCopyWithImpl<$Res, $Val extends UpdateUnitState>
    implements $UpdateUnitStateCopyWith<$Res> {
  _$UpdateUnitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateUnitState = null,
    Object? roomsCount = null,
    Object? conditionersCount = null,
    Object? bathroomsCount = null,
  }) {
    return _then(_value.copyWith(
      updateUnitState: null == updateUnitState
          ? _value.updateUnitState
          : updateUnitState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      roomsCount: null == roomsCount
          ? _value.roomsCount
          : roomsCount // ignore: cast_nullable_to_non_nullable
              as int,
      conditionersCount: null == conditionersCount
          ? _value.conditionersCount
          : conditionersCount // ignore: cast_nullable_to_non_nullable
              as int,
      bathroomsCount: null == bathroomsCount
          ? _value.bathroomsCount
          : bathroomsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UpdateUnitStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState updateUnitState,
      int roomsCount,
      int conditionersCount,
      int bathroomsCount});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UpdateUnitStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateUnitState = null,
    Object? roomsCount = null,
    Object? conditionersCount = null,
    Object? bathroomsCount = null,
  }) {
    return _then(_$InitialImpl(
      updateUnitState: null == updateUnitState
          ? _value.updateUnitState
          : updateUnitState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      roomsCount: null == roomsCount
          ? _value.roomsCount
          : roomsCount // ignore: cast_nullable_to_non_nullable
              as int,
      conditionersCount: null == conditionersCount
          ? _value.conditionersCount
          : conditionersCount // ignore: cast_nullable_to_non_nullable
              as int,
      bathroomsCount: null == bathroomsCount
          ? _value.bathroomsCount
          : bathroomsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.updateUnitState = RequestState.initial,
      this.roomsCount = 0,
      this.conditionersCount = 0,
      this.bathroomsCount = 0});

  @override
  @JsonKey()
  final RequestState updateUnitState;
  @override
  @JsonKey()
  final int roomsCount;
  @override
  @JsonKey()
  final int conditionersCount;
  @override
  @JsonKey()
  final int bathroomsCount;

  @override
  String toString() {
    return 'UpdateUnitState(updateUnitState: $updateUnitState, roomsCount: $roomsCount, conditionersCount: $conditionersCount, bathroomsCount: $bathroomsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.updateUnitState, updateUnitState) ||
                other.updateUnitState == updateUnitState) &&
            (identical(other.roomsCount, roomsCount) ||
                other.roomsCount == roomsCount) &&
            (identical(other.conditionersCount, conditionersCount) ||
                other.conditionersCount == conditionersCount) &&
            (identical(other.bathroomsCount, bathroomsCount) ||
                other.bathroomsCount == bathroomsCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateUnitState, roomsCount,
      conditionersCount, bathroomsCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements UpdateUnitState {
  const factory _Initial(
      {final RequestState updateUnitState,
      final int roomsCount,
      final int conditionersCount,
      final int bathroomsCount}) = _$InitialImpl;

  @override
  RequestState get updateUnitState;
  @override
  int get roomsCount;
  @override
  int get conditionersCount;
  @override
  int get bathroomsCount;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
