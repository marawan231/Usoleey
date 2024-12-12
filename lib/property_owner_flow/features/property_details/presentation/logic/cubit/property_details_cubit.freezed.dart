// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PropertyDetailsState {
  PropertDetailsModel? get propertDetailsModel =>
      throw _privateConstructorUsedError;
  dynamic get getProperyDetailsState => throw _privateConstructorUsedError;

  /// Create a copy of PropertyDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyDetailsStateCopyWith<PropertyDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyDetailsStateCopyWith<$Res> {
  factory $PropertyDetailsStateCopyWith(PropertyDetailsState value,
          $Res Function(PropertyDetailsState) then) =
      _$PropertyDetailsStateCopyWithImpl<$Res, PropertyDetailsState>;
  @useResult
  $Res call(
      {PropertDetailsModel? propertDetailsModel,
      dynamic getProperyDetailsState});
}

/// @nodoc
class _$PropertyDetailsStateCopyWithImpl<$Res,
        $Val extends PropertyDetailsState>
    implements $PropertyDetailsStateCopyWith<$Res> {
  _$PropertyDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertDetailsModel = freezed,
    Object? getProperyDetailsState = freezed,
  }) {
    return _then(_value.copyWith(
      propertDetailsModel: freezed == propertDetailsModel
          ? _value.propertDetailsModel
          : propertDetailsModel // ignore: cast_nullable_to_non_nullable
              as PropertDetailsModel?,
      getProperyDetailsState: freezed == getProperyDetailsState
          ? _value.getProperyDetailsState
          : getProperyDetailsState // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PropertyDetailsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PropertDetailsModel? propertDetailsModel,
      dynamic getProperyDetailsState});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PropertyDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertDetailsModel = freezed,
    Object? getProperyDetailsState = freezed,
  }) {
    return _then(_$InitialImpl(
      propertDetailsModel: freezed == propertDetailsModel
          ? _value.propertDetailsModel
          : propertDetailsModel // ignore: cast_nullable_to_non_nullable
              as PropertDetailsModel?,
      getProperyDetailsState: freezed == getProperyDetailsState
          ? _value.getProperyDetailsState!
          : getProperyDetailsState,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.propertDetailsModel,
      this.getProperyDetailsState = RequestState.initial});

  @override
  final PropertDetailsModel? propertDetailsModel;
  @override
  @JsonKey()
  final dynamic getProperyDetailsState;

  @override
  String toString() {
    return 'PropertyDetailsState(propertDetailsModel: $propertDetailsModel, getProperyDetailsState: $getProperyDetailsState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.propertDetailsModel, propertDetailsModel) ||
                other.propertDetailsModel == propertDetailsModel) &&
            const DeepCollectionEquality()
                .equals(other.getProperyDetailsState, getProperyDetailsState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, propertDetailsModel,
      const DeepCollectionEquality().hash(getProperyDetailsState));

  /// Create a copy of PropertyDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements PropertyDetailsState {
  const factory _Initial(
      {final PropertDetailsModel? propertDetailsModel,
      final dynamic getProperyDetailsState}) = _$InitialImpl;

  @override
  PropertDetailsModel? get propertDetailsModel;
  @override
  dynamic get getProperyDetailsState;

  /// Create a copy of PropertyDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
