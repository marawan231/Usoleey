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

  @JsonKey(ignore: true)
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
      File? pdfFile});
}

/// @nodoc
class _$TicketDetailsStateCopyWithImpl<$Res, $Val extends TicketDetailsState>
    implements $TicketDetailsStateCopyWith<$Res> {
  _$TicketDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getTicketDetailsState = null,
    Object? updateTicketStatus = null,
    Object? ticketDetailsModel = freezed,
    Object? pdfFile = freezed,
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
      File? pdfFile});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TicketDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getTicketDetailsState = null,
    Object? updateTicketStatus = null,
    Object? ticketDetailsModel = freezed,
    Object? pdfFile = freezed,
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
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.getTicketDetailsState = RequestState.loading,
      this.updateTicketStatus = RequestState.initial,
      this.ticketDetailsModel,
      this.pdfFile});

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
  String toString() {
    return 'TicketDetailsState(getTicketDetailsState: $getTicketDetailsState, updateTicketStatus: $updateTicketStatus, ticketDetailsModel: $ticketDetailsModel, pdfFile: $pdfFile)';
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
            (identical(other.pdfFile, pdfFile) || other.pdfFile == pdfFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getTicketDetailsState,
      updateTicketStatus, ticketDetailsModel, pdfFile);

  @JsonKey(ignore: true)
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
      final File? pdfFile}) = _$InitialImpl;

  @override
  RequestState get getTicketDetailsState;
  @override
  RequestState get updateTicketStatus;
  @override
  TicketDetailsModel? get ticketDetailsModel;
  @override
  File? get pdfFile;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
