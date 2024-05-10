import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tenant_home_layout_cubit.freezed.dart';

part 'tenant_home_layout_state.dart';

class TenantHomeLayoutCubit extends Cubit<TenantHomeLayoutState> {
  TenantHomeLayoutCubit() : super(const _Initial());

  void changeIndex(int index) {
    emit(state.copyWith(index: index));
  }
}
