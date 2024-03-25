// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_real_estate_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyRealEstateState {
  RequestState get getMyPropertiesState => throw _privateConstructorUsedError;
  List<Property> get properties => throw _privateConstructorUsedError;
  int get propertyPaginationPage => throw _privateConstructorUsedError;
  RequestState get getMyUnitsState => throw _privateConstructorUsedError;
  List<Unit> get units => throw _privateConstructorUsedError;
  int get unitPaginationPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyRealEstateStateCopyWith<MyRealEstateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyRealEstateStateCopyWith<$Res> {
  factory $MyRealEstateStateCopyWith(
          MyRealEstateState value, $Res Function(MyRealEstateState) then) =
      _$MyRealEstateStateCopyWithImpl<$Res, MyRealEstateState>;
  @useResult
  $Res call(
      {RequestState getMyPropertiesState,
      List<Property> properties,
      int propertyPaginationPage,
      RequestState getMyUnitsState,
      List<Unit> units,
      int unitPaginationPage});
}

/// @nodoc
class _$MyRealEstateStateCopyWithImpl<$Res, $Val extends MyRealEstateState>
    implements $MyRealEstateStateCopyWith<$Res> {
  _$MyRealEstateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getMyPropertiesState = null,
    Object? properties = null,
    Object? propertyPaginationPage = null,
    Object? getMyUnitsState = null,
    Object? units = null,
    Object? unitPaginationPage = null,
  }) {
    return _then(_value.copyWith(
      getMyPropertiesState: null == getMyPropertiesState
          ? _value.getMyPropertiesState
          : getMyPropertiesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<Property>,
      propertyPaginationPage: null == propertyPaginationPage
          ? _value.propertyPaginationPage
          : propertyPaginationPage // ignore: cast_nullable_to_non_nullable
              as int,
      getMyUnitsState: null == getMyUnitsState
          ? _value.getMyUnitsState
          : getMyUnitsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as List<Unit>,
      unitPaginationPage: null == unitPaginationPage
          ? _value.unitPaginationPage
          : unitPaginationPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $MyRealEstateStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState getMyPropertiesState,
      List<Property> properties,
      int propertyPaginationPage,
      RequestState getMyUnitsState,
      List<Unit> units,
      int unitPaginationPage});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MyRealEstateStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getMyPropertiesState = null,
    Object? properties = null,
    Object? propertyPaginationPage = null,
    Object? getMyUnitsState = null,
    Object? units = null,
    Object? unitPaginationPage = null,
  }) {
    return _then(_$InitialImpl(
      getMyPropertiesState: null == getMyPropertiesState
          ? _value.getMyPropertiesState
          : getMyPropertiesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      properties: null == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<Property>,
      propertyPaginationPage: null == propertyPaginationPage
          ? _value.propertyPaginationPage
          : propertyPaginationPage // ignore: cast_nullable_to_non_nullable
              as int,
      getMyUnitsState: null == getMyUnitsState
          ? _value.getMyUnitsState
          : getMyUnitsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      units: null == units
          ? _value._units
          : units // ignore: cast_nullable_to_non_nullable
              as List<Unit>,
      unitPaginationPage: null == unitPaginationPage
          ? _value.unitPaginationPage
          : unitPaginationPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.getMyPropertiesState = RequestState.loading,
      final List<Property> properties = const [],
      this.propertyPaginationPage = 1,
      this.getMyUnitsState = RequestState.loading,
      final List<Unit> units = const [],
      this.unitPaginationPage = 1})
      : _properties = properties,
        _units = units;

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
  @JsonKey()
  final int propertyPaginationPage;
  @override
  @JsonKey()
  final RequestState getMyUnitsState;
  final List<Unit> _units;
  @override
  @JsonKey()
  List<Unit> get units {
    if (_units is EqualUnmodifiableListView) return _units;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_units);
  }

  @override
  @JsonKey()
  final int unitPaginationPage;

  @override
  String toString() {
    return 'MyRealEstateState(getMyPropertiesState: $getMyPropertiesState, properties: $properties, propertyPaginationPage: $propertyPaginationPage, getMyUnitsState: $getMyUnitsState, units: $units, unitPaginationPage: $unitPaginationPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.getMyPropertiesState, getMyPropertiesState) ||
                other.getMyPropertiesState == getMyPropertiesState) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties) &&
            (identical(other.propertyPaginationPage, propertyPaginationPage) ||
                other.propertyPaginationPage == propertyPaginationPage) &&
            (identical(other.getMyUnitsState, getMyUnitsState) ||
                other.getMyUnitsState == getMyUnitsState) &&
            const DeepCollectionEquality().equals(other._units, _units) &&
            (identical(other.unitPaginationPage, unitPaginationPage) ||
                other.unitPaginationPage == unitPaginationPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getMyPropertiesState,
      const DeepCollectionEquality().hash(_properties),
      propertyPaginationPage,
      getMyUnitsState,
      const DeepCollectionEquality().hash(_units),
      unitPaginationPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements MyRealEstateState {
  const factory _Initial(
      {final RequestState getMyPropertiesState,
      final List<Property> properties,
      final int propertyPaginationPage,
      final RequestState getMyUnitsState,
      final List<Unit> units,
      final int unitPaginationPage}) = _$InitialImpl;

  @override
  RequestState get getMyPropertiesState;
  @override
  List<Property> get properties;
  @override
  int get propertyPaginationPage;
  @override
  RequestState get getMyUnitsState;
  @override
  List<Unit> get units;
  @override
  int get unitPaginationPage;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
