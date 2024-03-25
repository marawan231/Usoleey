// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owner_home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OwnerHomeState {
  RequestState get getHomeStatsState => throw _privateConstructorUsedError;
  HomeModel? get homeModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OwnerHomeStateCopyWith<OwnerHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerHomeStateCopyWith<$Res> {
  factory $OwnerHomeStateCopyWith(
          OwnerHomeState value, $Res Function(OwnerHomeState) then) =
      _$OwnerHomeStateCopyWithImpl<$Res, OwnerHomeState>;
  @useResult
  $Res call({RequestState getHomeStatsState, HomeModel? homeModel});
}

/// @nodoc
class _$OwnerHomeStateCopyWithImpl<$Res, $Val extends OwnerHomeState>
    implements $OwnerHomeStateCopyWith<$Res> {
  _$OwnerHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getHomeStatsState = null,
    Object? homeModel = freezed,
  }) {
    return _then(_value.copyWith(
      getHomeStatsState: null == getHomeStatsState
          ? _value.getHomeStatsState
          : getHomeStatsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      homeModel: freezed == homeModel
          ? _value.homeModel
          : homeModel // ignore: cast_nullable_to_non_nullable
              as HomeModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $OwnerHomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestState getHomeStatsState, HomeModel? homeModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OwnerHomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getHomeStatsState = null,
    Object? homeModel = freezed,
  }) {
    return _then(_$InitialImpl(
      getHomeStatsState: null == getHomeStatsState
          ? _value.getHomeStatsState
          : getHomeStatsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      homeModel: freezed == homeModel
          ? _value.homeModel
          : homeModel // ignore: cast_nullable_to_non_nullable
              as HomeModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.getHomeStatsState = RequestState.loading, this.homeModel});

  @override
  @JsonKey()
  final RequestState getHomeStatsState;
  @override
  final HomeModel? homeModel;

  @override
  String toString() {
    return 'OwnerHomeState(getHomeStatsState: $getHomeStatsState, homeModel: $homeModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.getHomeStatsState, getHomeStatsState) ||
                other.getHomeStatsState == getHomeStatsState) &&
            (identical(other.homeModel, homeModel) ||
                other.homeModel == homeModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getHomeStatsState, homeModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements OwnerHomeState {
  const factory _Initial(
      {final RequestState getHomeStatsState,
      final HomeModel? homeModel}) = _$InitialImpl;

  @override
  RequestState get getHomeStatsState;
  @override
  HomeModel? get homeModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
