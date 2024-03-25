import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/property_owner_flow/features/unit_details/data/models/unit_details_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/enums/enums.dart';
import '../../../data/repository/update_unit_repository.dart';

part 'update_unit_state.dart';

part 'update_unit_cubit.freezed.dart';

class UpdateUnitCubit extends Cubit<UpdateUnitState> {
  final UpdateUnitRepository updateUnitRepository;

  UpdateUnitCubit(this.updateUnitRepository) : super(const _Initial());

  void updateRoomsCount(int rooms) => emit(state.copyWith(roomsCount: rooms));

  void updateBathroomsCount(int rooms) =>
      emit(state.copyWith(roomsCount: rooms));

  void updateConditionersCount(int rooms) =>
      emit(state.copyWith(roomsCount: rooms));

  void initValues(UnitDetailsModel unitDetailsModel) {
    emit(state.copyWith(
        roomsCount: unitDetailsModel.rooms ?? 0,
        bathroomsCount: unitDetailsModel.bathrooms ?? 0));
  }
}
