// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketDetailsState {
  RequestState get getTicketDetailsState => throw _privateConstructorUsedError;
  RequestState get updateTicketStatus => throw _privateConstructorUsedError;
  TicketDetailsModel? get ticketDetailsModel =>
      throw _privateConstructorUsedError;
  File? get pdfFile => throw _privateConstructorUsedError;
  RequestState get rateRequestState => throw _privateConstructorUsedError;
  int get star => throw _privateConstructorUsedError;

  /// Create a copy of TicketDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketDetailsStateCopyWith<TicketDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketDetailsStateCopyWith<$Res> {
  factory $TicketDetailsStateCopyWith(
          TicketDetailsState value, $Res Function(TicketDetailsState) then) =
      _$TicketDetailsStateCopyWithImpl<$Res, TicketDetailsState>;
  @useResult
  $Res call(
      {RequestState getTicketDetailsState,
      RequestState updateTicketStatus,
      TicketDetailsModel? ticketDetailsModel,
      File? pdfFile,
      RequestState rateRequestState,
      int star});
}

/// @nodoc
class _$TicketDetailsStateCopyWithImpl<$Res, $Val extends TicketDetailsState>
    implements $TicketDetailsStateCopyWith<$Res> {
  _$TicketDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getTicketDetailsState = null,
    Object? updateTicketStatus = null,
    Object? ticketDetailsModel = freezed,
    Object? pdfFile = freezed,
    Object? rateRequestState = null,
    Object? star = null,
  }) {
    return _then(_value.copyWith(
      getTicketDetailsState: null == getTicketDetailsState
          ? _value.getTicketDetailsState
          : getTicketDetailsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      updateTicketStatus: null == updateTicketStatus
          ? _value.updateTicketStatus
          : updateTicketStatus // ignore: cast_nullable_to_non_nullable
              as RequestState,
      ticketDetailsModel: freezed == ticketDetailsModel
          ? _value.ticketDetailsModel
          : ticketDetailsModel // ignore: cast_nullable_to_non_nullable
              as TicketDetailsModel?,
      pdfFile: freezed == pdfFile
          ? _value.pdfFile
          : pdfFile // ignore: cast_nullable_to_non_nullable
              as File?,
      rateRequestState: null == rateRequestState
          ? _value.rateRequestState
          : rateRequestState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      star: null == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $TicketDetailsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState getTicketDetailsState,
      RequestState updateTicketStatus,
      TicketDetailsModel? ticketDetailsModel,
      File? pdfFile,
      RequestState rateRequestState,
      int star});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TicketDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getTicketDetailsState = null,
    Object? updateTicketStatus = null,
    Object? ticketDetailsModel = freezed,
    Object? pdfFile = freezed,
    Object? rateRequestState = null,
    Object? star = null,
  }) {
    return _then(_$InitialImpl(
      getTicketDetailsState: null == getTicketDetailsState
          ? _value.getTicketDetailsState
          : getTicketDetailsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      updateTicketStatus: null == updateTicketStatus
          ? _value.updateTicketStatus
          : updateTicketStatus // ignore: cast_nullable_to_non_nullable
              as RequestState,
      ticketDetailsModel: freezed == ticketDetailsModel
          ? _value.ticketDetailsModel
          : ticketDetailsModel // ignore: cast_nullable_to_non_nullable
              as TicketDetailsModel?,
      pdfFile: freezed == pdfFile
          ? _value.pdfFile
          : pdfFile // ignore: cast_nullable_to_non_nullable
              as File?,
      rateRequestState: null == rateRequestState
          ? _value.rateRequestState
          : rateRequestState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      star: null == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.getTicketDetailsState = RequestState.loading,
      this.updateTicketStatus = RequestState.initial,
      this.ticketDetailsModel,
      this.pdfFile,
      this.rateRequestState = RequestState.initial,
      this.star = 0});

  @override
  @JsonKey()
  final RequestState getTicketDetailsState;
  @override
  @JsonKey()
  final RequestState updateTicketStatus;
  @override
  final TicketDetailsModel? ticketDetailsModel;
  @override
  final File? pdfFile;
  @override
  @JsonKey()
  final RequestState rateRequestState;
  @override
  @JsonKey()
  final int star;

  @override
  String toString() {
    return 'TicketDetailsState(getTicketDetailsState: $getTicketDetailsState, updateTicketStatus: $updateTicketStatus, ticketDetailsModel: $ticketDetailsModel, pdfFile: $pdfFile, rateRequestState: $rateRequestState, star: $star)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.getTicketDetailsState, getTicketDetailsState) ||
                other.getTicketDetailsState == getTicketDetailsState) &&
            (identical(other.updateTicketStatus, updateTicketStatus) ||
                other.updateTicketStatus == updateTicketStatus) &&
            (identical(other.ticketDetailsModel, ticketDetailsModel) ||
                other.ticketDetailsModel == ticketDetailsModel) &&
            (identical(other.pdfFile, pdfFile) || other.pdfFile == pdfFile) &&
            (identical(other.rateRequestState, rateRequestState) ||
                other.rateRequestState == rateRequestState) &&
            (identical(other.star, star) || other.star == star));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getTicketDetailsState,
      updateTicketStatus, ticketDetailsModel, pdfFile, rateRequestState, star);

  /// Create a copy of TicketDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements TicketDetailsState {
  const factory _Initial(
      {final RequestState getTicketDetailsState,
      final RequestState updateTicketStatus,
      final TicketDetailsModel? ticketDetailsModel,
      final File? pdfFile,
      final RequestState rateRequestState,
      final int star}) = _$InitialImpl;

  @override
  RequestState get getTicketDetailsState;
  @override
  RequestState get updateTicketStatus;
  @override
  TicketDetailsModel? get ticketDetailsModel;
  @override
  File? get pdfFile;
  @override
  RequestState get rateRequestState;
  @override
  int get star;

  /// Create a copy of TicketDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
