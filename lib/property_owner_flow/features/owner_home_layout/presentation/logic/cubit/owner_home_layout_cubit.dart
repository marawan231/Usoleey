  import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_home_layout_cubit.freezed.dart';
part 'owner_home_layout_state.dart';


class OwnerHomeLayoutCubit extends Cubit<OwnerHomeLayoutState>{
  OwnerHomeLayoutCubit() : super(const _Initial());

  void changeIndex(int index) {
    emit(state.copyWith(index: index));
  }
}