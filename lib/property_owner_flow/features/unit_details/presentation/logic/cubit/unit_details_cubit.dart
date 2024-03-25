import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/property_owner_flow/features/unit_details/data/models/unit_details_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/enums/enums.dart';
import '../../../data/repository/unit_details_repository.dart';

part 'unit_details_cubit.freezed.dart';
part 'unit_details_state.dart';

class UnitDetailsCubit extends Cubit<UnitDetailsState> {
  final UnitDetailsRepository unitDetailsRepository;

  UnitDetailsCubit(this.unitDetailsRepository) : super(_Initial());

  Future<void> getUnitDetails({required int id}) async {
    final result =
        await unitDetailsRepository.getMyProperties(id: id.toString());
    result.when(success: (unitDetailsModel) {
      emit(state.copyWith(
          getUnitDetailsState: RequestState.success,
          unitDetailsModel: unitDetailsModel));
    }, failure: (failure) {
      emit(state.copyWith(getUnitDetailsState: RequestState.error));
    });
  }
}
