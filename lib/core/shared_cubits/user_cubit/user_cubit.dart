import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/tenant_flow/features/login/data/models/auth_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_cubit.freezed.dart';
part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const _Initial());

  void updateUser(UserModel userModel, Stats stats) {
    emit(state.copyWith(userModel: userModel, stats: stats));
  }
}
