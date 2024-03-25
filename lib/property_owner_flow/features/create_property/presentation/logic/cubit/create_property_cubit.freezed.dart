// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_property_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreatePropertyState {
  RequestState get createPropertyState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatePropertyStateCopyWith<CreatePropertyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePropertyStateCopyWith<$Res> {
  factory $CreatePropertyStateCopyWith(
          CreatePropertyState value, $Res Function(CreatePropertyState) then) =
      _$CreatePropertyStateCopyWithImpl<$Res, CreatePropertyState>;
  @useResult
  $Res call({RequestState createPropertyState});
}

/// @nodoc
class _$CreatePropertyStateCopyWithImpl<$Res, $Val extends CreatePropertyState>
    implements $CreatePropertyStateCopyWith<$Res> {
  _$CreatePropertyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createPropertyState = null,
  }) {
    return _then(_value.copyWith(
      createPropertyState: null == createPropertyState
          ? _value.createPropertyState
          : createPropertyState // ignore: cast_nullable_to_non_nullable
              as RequestState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CreatePropertyStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestState createPropertyState});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CreatePropertyStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createPropertyState = null,
  }) {
    return _then(_$InitialImpl(
      createPropertyState: null == createPropertyState
          ? _value.createPropertyState
          : createPropertyState // ignore: cast_nullable_to_non_nullable
              as RequestState,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({this.createPropertyState = RequestState.initial});

  @override
  @JsonKey()
  final RequestState createPropertyState;

  @override
  String toString() {
    return 'CreatePropertyState(createPropertyState: $createPropertyState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.createPropertyState, createPropertyState) ||
                other.createPropertyState == createPropertyState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createPropertyState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements CreatePropertyState {
  const factory _Initial({final RequestState createPropertyState}) =
      _$InitialImpl;

  @override
  RequestState get createPropertyState;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
