// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owner_notification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OwnerNotificationState {
  RequestState get getOwnerNotificationState =>
      throw _privateConstructorUsedError;
  List<OwnerNotificationItem> get notifications =>
      throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  /// Create a copy of OwnerNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OwnerNotificationStateCopyWith<OwnerNotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerNotificationStateCopyWith<$Res> {
  factory $OwnerNotificationStateCopyWith(OwnerNotificationState value,
          $Res Function(OwnerNotificationState) then) =
      _$OwnerNotificationStateCopyWithImpl<$Res, OwnerNotificationState>;
  @useResult
  $Res call(
      {RequestState getOwnerNotificationState,
      List<OwnerNotificationItem> notifications,
      int page});
}

/// @nodoc
class _$OwnerNotificationStateCopyWithImpl<$Res,
        $Val extends OwnerNotificationState>
    implements $OwnerNotificationStateCopyWith<$Res> {
  _$OwnerNotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OwnerNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getOwnerNotificationState = null,
    Object? notifications = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      getOwnerNotificationState: null == getOwnerNotificationState
          ? _value.getOwnerNotificationState
          : getOwnerNotificationState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<OwnerNotificationItem>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $OwnerNotificationStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState getOwnerNotificationState,
      List<OwnerNotificationItem> notifications,
      int page});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OwnerNotificationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getOwnerNotificationState = null,
    Object? notifications = null,
    Object? page = null,
  }) {
    return _then(_$InitialImpl(
      getOwnerNotificationState: null == getOwnerNotificationState
          ? _value.getOwnerNotificationState
          : getOwnerNotificationState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<OwnerNotificationItem>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.getOwnerNotificationState = RequestState.initial,
      final List<OwnerNotificationItem> notifications = const [],
      this.page = 1})
      : _notifications = notifications;

  @override
  @JsonKey()
  final RequestState getOwnerNotificationState;
  final List<OwnerNotificationItem> _notifications;
  @override
  @JsonKey()
  List<OwnerNotificationItem> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'OwnerNotificationState(getOwnerNotificationState: $getOwnerNotificationState, notifications: $notifications, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.getOwnerNotificationState,
                    getOwnerNotificationState) ||
                other.getOwnerNotificationState == getOwnerNotificationState) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getOwnerNotificationState,
      const DeepCollectionEquality().hash(_notifications), page);

  /// Create a copy of OwnerNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements OwnerNotificationState {
  const factory _Initial(
      {final RequestState getOwnerNotificationState,
      final List<OwnerNotificationItem> notifications,
      final int page}) = _$InitialImpl;

  @override
  RequestState get getOwnerNotificationState;
  @override
  List<OwnerNotificationItem> get notifications;
  @override
  int get page;

  /// Create a copy of OwnerNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
