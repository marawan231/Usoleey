// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_unit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateUnitState {
  RequestState get createUnitState => throw _privateConstructorUsedError;
  bool get lounge => throw _privateConstructorUsedError;
  RequestState get getMyPropertiesState => throw _privateConstructorUsedError;
  List<Property> get properties => throw _privateConstructorUsedError;
  Property? get property => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  File? get unitImage => throw _privateConstructorUsedError;
  bool get kitchen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateUnitStateCopyWith<CreateUnitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUnitStateCopyWith<$Res> {
  factory $CreateUnitStateCopyWith(
          CreateUnitState value, $Res Function(CreateUnitState) then) =
      _$CreateUnitStateCopyWithImpl<$Res, CreateUnitState>;
  @useResult
  $Res call(
      {RequestState createUnitState,
      bool lounge,
      RequestState getMyPropertiesState,
      List<Property> properties,
      Property? property,
      int page,
      File? unitImage,
      bool kitchen});
}

/// @nodoc
class _$CreateUnitStateCopyWithImpl<$Res, $Val extends CreateUnitState>
    implements $CreateUnitStateCopyWith<$Res> {
  _$CreateUnitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createUnitState = null,
    Object? lounge = null,
    Object? getMyPropertiesState = null,
    Object? properties = null,
    Object? property = freezed,
    Object? page = null,
    Object? unitImage = freezed,
    Object? kitchen = null,
  }) {
    return _then(_value.copyWith(
      createUnitState: null == createUnitState
          ? _value.createUnitState
          : createUnitState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      lounge: null == lounge
          ? _value.lounge
          : lounge // ignore: cast_nullable_to_non_nullable
              as bool,
      getMyPropertiesState: null == getMyPropertiesState
          ? _value.getMyPropertiesState
          : getMyPropertiesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<Property>,
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as Property?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      unitImage: freezed == unitImage
          ? _value.unitImage
          : unitImage // ignore: cast_nullable_to_non_nullable
              as File?,
      kitchen: null == kitchen
          ? _value.kitchen
          : kitchen // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CreateUnitStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState createUnitState,
      bool lounge,
      RequestState getMyPropertiesState,
      List<Property> properties,
      Property? property,
      int page,
      File? unitImage,
      bool kitchen});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CreateUnitStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createUnitState = null,
    Object? lounge = null,
    Object? getMyPropertiesState = null,
    Object? properties = null,
    Object? property = freezed,
    Object? page = null,
    Object? unitImage = freezed,
    Object? kitchen = null,
  }) {
    return _then(_$InitialImpl(
      createUnitState: null == createUnitState
          ? _value.createUnitState
          : createUnitState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      lounge: null == lounge
          ? _value.lounge
          : lounge // ignore: cast_nullable_to_non_nullable
              as bool,
      getMyPropertiesState: null == getMyPropertiesState
          ? _value.getMyPropertiesState
          : getMyPropertiesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      properties: null == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<Property>,
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as Property?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      unitImage: freezed == unitImage
          ? _value.unitImage
          : unitImage // ignore: cast_nullable_to_non_nullable
              as File?,
      kitchen: null == kitchen
          ? _value.kitchen
          : kitchen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.createUnitState = RequestState.initial,
      this.lounge = false,
      this.getMyPropertiesState = RequestState.loading,
      final List<Property> properties = const [],
      this.property,
      this.page = 1,
      this.unitImage,
      this.kitchen = false})
      : _properties = properties;

  @override
  @JsonKey()
  final RequestState createUnitState;
  @override
  @JsonKey()
  final bool lounge;
  @override
  @JsonKey()
  final RequestState getMyPropertiesState;
  final List<Property> _properties;
  @override
  @JsonKey()
  List<Property> get properties {
    if (_properties is EqualUnmodifiableListView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_properties);
  }

  @override
  final Property? property;
  @override
  @JsonKey()
  final int page;
  @override
  final File? unitImage;
  @override
  @JsonKey()
  final bool kitchen;

  @override
  String toString() {
    return 'CreateUnitState(createUnitState: $createUnitState, lounge: $lounge, getMyPropertiesState: $getMyPropertiesState, properties: $properties, property: $property, page: $page, unitImage: $unitImage, kitchen: $kitchen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.createUnitState, createUnitState) ||
                other.createUnitState == createUnitState) &&
            (identical(other.lounge, lounge) || other.lounge == lounge) &&
            (identical(other.getMyPropertiesState, getMyPropertiesState) ||
                other.getMyPropertiesState == getMyPropertiesState) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties) &&
            (identical(other.property, property) ||
                other.property == property) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.unitImage, unitImage) ||
                other.unitImage == unitImage) &&
            (identical(other.kitchen, kitchen) || other.kitchen == kitchen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      createUnitState,
      lounge,
      getMyPropertiesState,
      const DeepCollectionEquality().hash(_properties),
      property,
      page,
      unitImage,
      kitchen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements CreateUnitState {
  const factory _Initial(
      {final RequestState createUnitState,
      final bool lounge,
      final RequestState getMyPropertiesState,
      final List<Property> properties,
      final Property? property,
      final int page,
      final File? unitImage,
      final bool kitchen}) = _$InitialImpl;

  @override
  RequestState get createUnitState;
  @override
  bool get lounge;
  @override
  RequestState get getMyPropertiesState;
  @override
  List<Property> get properties;
  @override
  Property? get property;
  @override
  int get page;
  @override
  File? get unitImage;
  @override
  bool get kitchen;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
