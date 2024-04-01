import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/property_owner_flow/features/property_details/data/models/propert_details_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/enums/enums.dart';
import '../../../data/repository/property_details_repository.dart';

part 'property_details_cubit.freezed.dart';
part 'property_details_state.dart';

class PropertyDetailsCubit extends Cubit<PropertyDetailsState> {
  final PropertyDetailsRepository propertyDetailsRepository;

  PropertyDetailsCubit(this.propertyDetailsRepository)
      : super(const _Initial());

  Future<void> getPropertyDetails({required int id}) async {
    emit(state.copyWith(getProperyDetailsState: RequestState.loading));
    final result =
        await propertyDetailsRepository.getUnitDetails(id: id.toString());
    result.when(success: (unitDetailsModel) {
      emit(state.copyWith(
          getProperyDetailsState: RequestState.success,
          propertDetailsModel: unitDetailsModel));
    }, failure: (failure) {
      emit(state.copyWith(getProperyDetailsState: RequestState.error));
    });
  }
}
