import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/extensions/map_text_editing_controller.dart';
import 'package:flutter_complete_project/property_owner_flow/features/create_unit/data/models/create_unit_request_model.dart';
import 'package:flutter_complete_project/property_owner_flow/features/my_real_estate/presentation/logic/cubit/my_real_estate_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/enums/enums.dart';
import '../../../../../../core/navigator/navigator.dart';
import '../../../../../../core/network_service/network_exceptions.dart';
import '../../../../../../core/shared_cubits/user_cubit/user_cubit.dart';
import '../../../../../../core/shared_models/owner_property_model.dart';
import '../../../../../../core/utils/utils.dart';
import '../../../data/repository/create_unit_repository.dart';

part 'create_unit_cubit.freezed.dart';
part 'create_unit_state.dart';

class CreateUnitCubit extends Cubit<CreateUnitState> {
  final CreateUnitRepository createUnitRepository;

  CreateUnitCubit(this.createUnitRepository) : super(const _Initial());

  int count = 0;

  Future<void> createUnit(
      {required GlobalKey<FormState> formKey,
      required Map<String, TextEditingController>
          createUnitControllers}) async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    if (state.unitImage == null) {
      showToast(message: 'please select image');
      return;
    }
    emit(state.copyWith(createUnitState: RequestState.loading));
    final user = getIt<UserCubit>().state.userModel;
    final data = createUnitControllers.data();
    final DateFormat format = DateFormat("E, M/d/yyyy");
    final CreateUnitRequestModel createUnitRequestModel =
        CreateUnitRequestModel(
            name: data['name'],
            rent: double.parse(data['rent']),
            rentCollectionDate: format.parse(data['rentCollectionDate']),
            electricityAccount: data['electricityAccount'],
            waterAccount: data['waterAccount'],
            address: data['address'],
            space: int.parse(data['space']),
            rooms: int.parse(data['rooms']),
            bathrooms: int.parse(data['bathrooms']),
            lounge: state.lounge,
            conditioners: int.parse(data['conditioners']),
            kitchen: state.kitchen,
            propertyId: state.property?.id ?? 0,
            ownerId: user?.id ?? 0,
            image: state.unitImage!);
    createUnitRequest(createUnitRequestModel);
  }

  Future<void> createUnitRequest(
      CreateUnitRequestModel createUnitRequestModel) async {
    final result =
        await createUnitRepository.createUnit(createUnitRequestModel);
    result.when(success: (response) {
      emit(state.copyWith(createUnitState: RequestState.success));
      Go.back();
      Go.back();
      getIt<MyRealEstateCubit>().getMyUnits();
    }, failure: (networkExceptions) {
      emit(state.copyWith(createUnitState: RequestState.error));
      final error = DioExceptionType.getErrorMessage(networkExceptions);
      showToast(message: error);
    });
  }

  Future<void> getMyProperties() async {
    final result = await createUnitRepository.getMyProperties(page: state.page);
    result.when(success: (propertyModel) {
      List<Property> newList = List.from(state.properties)
        ..addAll(propertyModel.updatedProperties ?? []);
      count = propertyModel.pagination!.count!;
      emit(state.copyWith(
          getMyPropertiesState: RequestState.success,
          properties: newList,
          page: state.page + 1));
    }, failure: (failure) {
      emit(state.copyWith(getMyPropertiesState: RequestState.error));
    });
  }

  void uploadUnitImage() async {
    File? file = await getCameraImage();
    if (file != null) {
      emit(state.copyWith(unitImage: file));
    }
  }

  void clearUnitImage() => emit(state.copyWith(unitImage: null));

  void loungeOnChage(bool value) => emit(state.copyWith(lounge: value));

  void kitchenOnChage(bool value) => emit(state.copyWith(kitchen: value));

  void propertyOnChange(Property? property) {
    if (state.property == property) {
      emit(state.copyWith(property: null));
    } else {
      emit(state.copyWith(property: property));
    }
  }

}
