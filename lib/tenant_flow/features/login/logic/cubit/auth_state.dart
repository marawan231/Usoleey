// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_cubit.dart';

@freezed
class AuthState<T> with _$AuthState<T> {
  const factory AuthState({
    AuthModel? authModel,
    @Default(RequestState.initial) RequestState loginRequestState,
    @Default(false) bool phoneNumberFocus,
  }) = _Initial;

}

