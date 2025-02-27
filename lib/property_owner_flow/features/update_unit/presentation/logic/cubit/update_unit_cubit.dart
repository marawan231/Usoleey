import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/widgets/custom_date_picker.dart';
import 'package:flutter_complete_project/property_owner_flow/features/unit_details/data/models/unit_details_model.dart';
import 'package:flutter_complete_project/property_owner_flow/features/unit_details/presentation/logic/cubit/unit_details_cubit.dart';
import 'package:flutter_complete_project/property_owner_flow/features/update_unit/data/models/update_unit_request_model.dart';
import 'package:flutter_complete_project/property_owner_flow/features/update_unit/presentation/utils/update_unit_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../../../../core/enums/enums.dart';
import '../../../../../../core/shared_models/property_model.dart';
import '../../../../../../core/utils/utils.dart';
import '../../../../../../core/widgets/custom_bottom_sheet_dialog.dart';
import '../../../../create_unit/presentation/widgets/create_unit_widgets_imports.dart';
import '../../../../ticket_details/data/models/ticket_details_model.dart';
import '../../../data/repository/update_unit_repository.dart';

part 'update_unit_cubit.freezed.dart';
part 'update_unit_state.dart';

class UpdateUnitCubit extends Cubit<UpdateUnitState> {
  final UpdateUnitRepository updateUnitRepository;

  UpdateUnitCubit(this.updateUnitRepository) : super(const _Initial());

  String initId = '';

  void initValues(UnitDetailsModel unitDetailsModel) {
    UpdateUnitUtils.initUnitControllersValues(unitDetailsModel);
    initId = unitDetailsModel.id.toString();
    emit(state.copyWith(
        roomsCount: unitDetailsModel.rooms ?? 0,
        bathroomsCount: unitDetailsModel.bathrooms ?? 0,
        conditionersCount: unitDetailsModel.conditioners ?? 0,
        lounge: unitDetailsModel.lounge ?? false,
        kitchen: unitDetailsModel.kitchen ?? false,
        propertyId: unitDetailsModel.propertyId,
        unitImage: unitDetailsModel.image ?? '',
        selectedProperty: unitDetailsModel.property));
  }

  void updateRoomsCount(int rooms) async {
    emit(state.copyWith(
        roomsCount: rooms, updateRoomsState: RequestState.loading));
    final result = await updateUnit(rooms: rooms);
    if (result != null) {
      emit(state.copyWith(updateRoomsState: RequestState.success));
    } else {
      emit(state.copyWith(updateRoomsState: RequestState.error));
    }
  }

  void updateBathroomsCount(int bathRooms) async {
    emit(state.copyWith(
        bathroomsCount: bathRooms, updateBathRoomsState: RequestState.loading));
    final result = await updateUnit(bathrooms: bathRooms);
    if (result != null) {
      emit(state.copyWith(updateBathRoomsState: RequestState.success));
    } else {
      emit(state.copyWith(updateBathRoomsState: RequestState.error));
    }
  }

  void updateConditionersCount(int conditioners) async {
    emit(state.copyWith(
        conditionersCount: conditioners,
        updateConditionersState: RequestState.loading));
    final result = await updateUnit(conditioners: conditioners);
    if (result != null) {
      emit(state.copyWith(updateConditionersState: RequestState.success));
    } else {
      emit(state.copyWith(updateConditionersState: RequestState.error));
    }
  }

  void updateUnitImage() async {
    File? file = await getCameraImage();
    if (file != null) {
      emit(state.copyWith(updateImageState: RequestState.loading));
      final Unit? unit = await updateUnit(image: file);
      if (unit != null) {
        emit(state.copyWith(
            unitImage: unit.image ?? '',
            updateImageState: RequestState.success));
      }
    }
  }

  void updateName(String? value) async {
    if (state.nameEnabled) {
      emit(state.copyWith(updateNameState: RequestState.loading));
      final Unit? unit = await updateUnit(name: value);
      if (unit != null) {
        emit(state.copyWith(updateNameState: RequestState.success));
        UpdateUnitUtils.updateUnitControllers['name']!.text = unit.name ?? '';
      }
    }
    emit(state.copyWith(nameEnabled: !state.nameEnabled));
  }

  void updateRent(String? value) async {
    if (state.rentEnabled) {
      emit(state.copyWith(updateRentState: RequestState.loading));
      final Unit? unit = await updateUnit(rent: num.parse(value!));
      if (unit != null) {
        emit(state.copyWith(updateRentState: RequestState.success));
        UpdateUnitUtils.updateUnitControllers['rent']!.text =
            unit.rent.toString();
      }
    }
    emit(state.copyWith(rentEnabled: !state.rentEnabled));
  }

  void updateRentCollectionDate() async {
    final TextEditingController rendCollectionDateController =
        UpdateUnitUtils.updateUnitControllers['rentCollectionDate']!;
    final DateTime? dateTime =
        await customShowDatePicker(controller: rendCollectionDateController);
    final DateFormat format = DateFormat("E, M/d/yyyy");
    emit(state.copyWith(updateRentDataState: RequestState.loading));
    final Unit? unit = await updateUnit(rentCollectionDate: dateTime);
    if (unit != null) {
      emit(state.copyWith(updateRentDataState: RequestState.success));
      rendCollectionDateController.text =
          format.parse(dateTime!.toString()).toString();
    }
  }

  void updateSpace(String? value) async {
    if (state.spaceEnabled) {
      emit(state.copyWith(updateSpaceState: RequestState.loading));
      final Unit? unit = await updateUnit(space: num.parse(value!));
      if (unit != null) {
        UpdateUnitUtils.updateUnitControllers['space']!.text =
            unit.space.toString();
        emit(state.copyWith(updateSpaceState: RequestState.success));
      }
    }
    emit(state.copyWith(spaceEnabled: !state.spaceEnabled));
  }

  void updateElectricityAccount(String? value) async {
    if (state.electricityAccountEnabled) {
      emit(state.copyWith(updateElectricityState: RequestState.loading));
      final Unit? unit = await updateUnit(space: num.parse(value!));
      if (unit != null) {
        UpdateUnitUtils.updateUnitControllers['electricityAccount']!.text =
            unit.electricityAccount ?? '';
        emit(state.copyWith(updateElectricityState: RequestState.success));
      } else {
        emit(state.copyWith(updateElectricityState: RequestState.error));
      }
    }
    emit(state.copyWith(
        electricityAccountEnabled: !state.electricityAccountEnabled));
  }

  Future<Unit?> updateUnit(
      {String? name,
      num? rent,
      DateTime? rentCollectionDate,
      String? electricityAccount,
      String? waterAccount,
      String? address,
      num? space,
      int? rooms,
      int? bathrooms,
      bool? lounge,
      int? conditioners,
      bool? kitchen,
      int? propertyId,
      int? ownerId,
      File? image}) async {
    Unit? unit;
    UpdateUnitRequestModel updateUnitRequestModel = UpdateUnitRequestModel(
        name,
        rent,
        rentCollectionDate,
        electricityAccount,
        waterAccount,
        address,
        space,
        rooms,
        bathrooms,
        lounge,
        conditioners,
        kitchen,
        propertyId,
        ownerId,
        image,
        initId);
    final result =
        await updateUnitRepository.updateUnit(updateUnitRequestModel);
    result.when(
        success: (updatedModel) {
          unit = updatedModel;
          getIt<UnitDetailsCubit>().getUnitDetails(id: updatedModel.id!);
        },
        failure: (_) {});
    return unit;
  }

  void updateKitchen(bool value) async {
    emit(state.copyWith(kitchen: value));
    final Unit? unit = await updateUnit(kitchen: value);
    if (unit != null) {
    } else {
      emit(state.copyWith(kitchen: !state.kitchen));
    }
  }

  void updateLounge(bool value) async {
    emit(state.copyWith(lounge: value));
    print(value);
    final Unit? unit = await updateUnit(lounge: value);
    if (unit != null) {
    } else {
      emit(state.copyWith(lounge: !state.lounge));
    }
  }

  void openProperties() {
    customBottomSheetDialog(
        body: BlocProvider.value(
            value: getIt<UpdateUnitCubit>()..getMyProperties(),
            child: BlocBuilder<UpdateUnitCubit, UpdateUnitState>(
              builder: (context, state) {
                return MyProperties(
                    scrollingCallback: getMyProperties,
                    saveProperty: updatePropertyId,
                    propertyModel: state.property,
                    propertyOnChange: propertyOnChange,
                    requestState: state.getMyPropertiesState,
                    properties: state.properties);
              },
            )));
  }

  void propertyOnChange(PropertyModel? property) async {
    if (state.property == property) {
      return;
    } else {
      emit(state.copyWith(property: property));
    }
  }

  void updatePropertyId() async {
    emit(state.copyWith(selectedProperty: state.property));
    await updateUnit(propertyId: state.property?.id);
  }

  int count = 0;

  Future<void> getMyProperties() async {
    if (count != 0 && state.properties.length >= count) {
      return;
    }
    final result = await updateUnitRepository.getMyProperties(page: state.page);
    result.when(success: (propertyModel) {
      List<PropertyModel> newList = List.from(state.properties)
        ..addAll(propertyModel.updatedProperties ?? []);
      count = propertyModel.pagination!.count!;
      emit(state.copyWith(
          properties: newList,
          getMyPropertiesState: RequestState.success,
          page: state.page + 1));
    }, failure: (failure) {
      emit(state.copyWith(getMyPropertiesState: RequestState.error));
    });
  }
}
