import 'package:freezed_annotation/freezed_annotation.dart';

part 'more_state.freezed.dart';

@freezed
class MoreState<T> with _$MoreState<T> {
  const factory MoreState.idle() = Idle<T>;

  //get contact info loading state
  const factory MoreState.getContactInfoLoading() = GetContactInfoLoading<T>;

  //get contact info success state
  const factory MoreState.getContactInfoSuccess(List<T> response) =
      GetContactInfoSuccess<T>;

  //get contact info error state
  const factory MoreState.getContactInfoError(String error) =
      GetContactInfoError<T>;
}
