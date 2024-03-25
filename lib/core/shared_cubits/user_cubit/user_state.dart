part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({UserModel? userModel,Stats? stats}) = _Initial;
}
