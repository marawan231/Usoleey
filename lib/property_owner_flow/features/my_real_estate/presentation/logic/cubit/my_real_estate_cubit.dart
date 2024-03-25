import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/shared_models/owner_unit_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/enums/enums.dart';
import '../../../../../../core/shared_models/owner_property_model.dart';
import '../../../data/repository/my_real_estate_repository.dart';

part 'my_real_estate_cubit.freezed.dart';
part 'my_real_estate_state.dart';

class MyRealEstateCubit extends Cubit<MyRealEstateState> {
  final MyRealEstateRepository myRealEstateRepository;

  MyRealEstateCubit(this.myRealEstateRepository) : super(const _Initial());

  int propertiesPaginationCount = 0;
  int unitsPaginationCount = 0;

  Future<void> getMyProperties() async {
    final result = await myRealEstateRepository.getMyProperties(
        page: state.propertyPaginationPage);
    result.when(success: (propertyModel) {
      List<Property> newList = List.from(state.properties)
        ..addAll(propertyModel.updatedProperties ?? []);
      propertiesPaginationCount = propertyModel.pagination!.count!;
      emit(state.copyWith(
          getMyPropertiesState: RequestState.success,
          properties: newList,
          propertyPaginationPage: state.propertyPaginationPage + 1));
    }, failure: (failure) {
      emit(state.copyWith(getMyPropertiesState: RequestState.error));
    });
  }

  Future<void> getMyUnits() async {
    final result =
        await myRealEstateRepository.getMyUnits(page: state.unitPaginationPage);
    result.when(success: (unitModel) {
      List<Unit> newList = List.from(state.units)
        ..addAll(unitModel.units ?? []);
      unitsPaginationCount = unitModel.pagination!.count!;
      emit(state.copyWith(
          getMyUnitsState: RequestState.success,
          units: newList,
          unitPaginationPage: state.unitPaginationPage + 1));
    }, failure: (failure) {
      emit(state.copyWith(getMyUnitsState: RequestState.error));
    });
  }
}
