// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'more_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MoreState<T> {
  List<ContactInfoModelData> get contactsData =>
      throw _privateConstructorUsedError;
  RequestState get getContactsRequestState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoreStateCopyWith<T, MoreState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoreStateCopyWith<T, $Res> {
  factory $MoreStateCopyWith(
          MoreState<T> value, $Res Function(MoreState<T>) then) =
      _$MoreStateCopyWithImpl<T, $Res, MoreState<T>>;
  @useResult
  $Res call(
      {List<ContactInfoModelData> contactsData,
      RequestState getContactsRequestState});
}

/// @nodoc
class _$MoreStateCopyWithImpl<T, $Res, $Val extends MoreState<T>>
    implements $MoreStateCopyWith<T, $Res> {
  _$MoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactsData = null,
    Object? getContactsRequestState = null,
  }) {
    return _then(_value.copyWith(
      contactsData: null == contactsData
          ? _value.contactsData
          : contactsData // ignore: cast_nullable_to_non_nullable
              as List<ContactInfoModelData>,
      getContactsRequestState: null == getContactsRequestState
          ? _value.getContactsRequestState
          : getContactsRequestState // ignore: cast_nullable_to_non_nullable
              as RequestState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res>
    implements $MoreStateCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {List<ContactInfoModelData> contactsData,
      RequestState getContactsRequestState});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$MoreStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactsData = null,
    Object? getContactsRequestState = null,
  }) {
    return _then(_$InitialImpl<T>(
      contactsData: null == contactsData
          ? _value._contactsData
          : contactsData // ignore: cast_nullable_to_non_nullable
              as List<ContactInfoModelData>,
      getContactsRequestState: null == getContactsRequestState
          ? _value.getContactsRequestState
          : getContactsRequestState // ignore: cast_nullable_to_non_nullable
              as RequestState,
    ));
  }
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl(
      {final List<ContactInfoModelData> contactsData = const [],
      this.getContactsRequestState = RequestState.loading})
      : _contactsData = contactsData;

  final List<ContactInfoModelData> _contactsData;
  @override
  @JsonKey()
  List<ContactInfoModelData> get contactsData {
    if (_contactsData is EqualUnmodifiableListView) return _contactsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contactsData);
  }

  @override
  @JsonKey()
  final RequestState getContactsRequestState;

  @override
  String toString() {
    return 'MoreState<$T>(contactsData: $contactsData, getContactsRequestState: $getContactsRequestState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl<T> &&
            const DeepCollectionEquality()
                .equals(other._contactsData, _contactsData) &&
            (identical(
                    other.getContactsRequestState, getContactsRequestState) ||
                other.getContactsRequestState == getContactsRequestState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_contactsData),
      getContactsRequestState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<T, _$InitialImpl<T>> get copyWith =>
      __$$InitialImplCopyWithImpl<T, _$InitialImpl<T>>(this, _$identity);
}

abstract class _Initial<T> implements MoreState<T> {
  const factory _Initial(
      {final List<ContactInfoModelData> contactsData,
      final RequestState getContactsRequestState}) = _$InitialImpl<T>;

  @override
  List<ContactInfoModelData> get contactsData;
  @override
  RequestState get getContactsRequestState;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<T, _$InitialImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
