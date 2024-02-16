// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_complete_project/features/login/data/models/auth_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState<T> with _$AuthState<T> {
  const factory AuthState.idle() = Idle<T>;

  const factory AuthState.loginLoading() = LoginLoading<T>;

  const factory AuthState.loginSuccess(AuthModel response) = LoginSuccess<T>;

  const factory AuthState.loginError(String error) =
      LoginError<T>;
}
