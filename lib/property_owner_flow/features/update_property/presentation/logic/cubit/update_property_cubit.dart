import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/enums/enums.dart';
import 'package:flutter_complete_project/property_owner_flow/features/property_details/data/models/propert_details_model.dart';
import 'package:flutter_complete_project/property_owner_flow/features/property_details/presentation/logic/cubit/property_details_cubit.dart';
import 'package:flutter_complete_project/property_owner_flow/features/update_property/data/models/update_property_request_model.dart';
import 'package:flutter_complete_project/property_owner_flow/features/update_unit/presentation/utils/update_unit_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/utils/utils.dart';
import '../../../data/repository/update_property_repository.dart';
import '../../utils/update_property_utils.dart';

part 'update_property_state.dart';

part 'update_property_cubit.freezed.dart';

class UpdatePropertyCubit extends Cubit<UpdatePropertyState> {
  final UpdatePropertyRepository updatePropertyRepository;

  UpdatePropertyCubit(this.updatePropertyRepository) : super(const _Initial());

  String propertyId = '';

  void initValues(PropertDetailsModel propertDetailsModel) {
    propertyId = propertDetailsModel.id.toString();
    UpdatePropertyUtils.initPropertyControllersValues(propertDetailsModel);
  }

  void updatePropertyImage() async {
    File? file = await getCameraImage();
    if (file != null) {
      emit(state.copyWith(updateImageState: RequestState.loading));
      final PropertDetailsModel? propertDetailsModel =
          await updateProperty(image: file);
      if (propertDetailsModel != null) {
        emit(state.copyWith(
            propertyImage: propertDetailsModel.image ?? '',
            updateImageState: RequestState.success));
      }
    }
  }

  void updateName(String? value) async {
    if (state.nameEnabled) {
      emit(state.copyWith(updateNameState: RequestState.loading));
      final PropertDetailsModel? propertDetailsModel =
          await updateProperty(name: value);
      if (propertDetailsModel != null) {
        emit(state.copyWith(updateNameState: RequestState.success));
        UpdatePropertyUtils.updatePropertyControllers['name']!.text =
            propertDetailsModel.name ?? '';
      }
    }
    emit(state.copyWith(nameEnabled: !state.nameEnabled));
  }

  void updateInstrumentNumber(String? value) async {

    if (state.instrumentNumberEnabled) {

      emit(state.copyWith(updateInstrumentNumberState: RequestState.loading));
      final PropertDetailsModel? propertDetailsModel =
          await updateProperty(instrumentNumber: int.parse(value!));
      if (propertDetailsModel != null) {
        emit(state.copyWith(updateInstrumentNumberState: RequestState.success));
        UpdatePropertyUtils.updatePropertyControllers['instrumentNumber']!.text =
            (propertDetailsModel.instrumentNumber ?? 0).toString();
      }
    }
    emit(state.copyWith(
        instrumentNumberEnabled: !state.instrumentNumberEnabled));
  }

  void updateAddress(String? value) async {
    if (state.addressEnabled) {
      emit(state.copyWith(updateAddressState: RequestState.loading));
      final PropertDetailsModel? propertDetailsModel =
          await updateProperty(address: value);
      if (propertDetailsModel != null) {
        emit(state.copyWith(updateAddressState: RequestState.success));
        UpdatePropertyUtils.updatePropertyControllers['address']!.text =
            propertDetailsModel.address ?? '';
      }
    }
    emit(state.copyWith(addressEnabled: !state.addressEnabled));
  }

  void updateStreet(String? value) async {
    if (state.streetEnabled) {
      emit(state.copyWith(updateStreetState: RequestState.loading));
      final PropertDetailsModel? propertDetailsModel =
          await updateProperty(street: value);
      if (propertDetailsModel != null) {
        emit(state.copyWith(updateStreetState: RequestState.success));
        UpdatePropertyUtils.updatePropertyControllers['street']!.text =
            propertDetailsModel.street ?? '';
      }
    }
    emit(state.copyWith(streetEnabled: !state.streetEnabled));
  }

  void updateDistrict(String? value) async {
    if (state.districtEnabled) {
      emit(state.copyWith(updateDistrictState: RequestState.loading));
      final PropertDetailsModel? propertDetailsModel =
          await updateProperty(district: value);
      if (propertDetailsModel != null) {
        emit(state.copyWith(updateDistrictState: RequestState.success));
        UpdatePropertyUtils.updatePropertyControllers['district']!.text =
            propertDetailsModel.district ?? '';
      }
    }
    emit(state.copyWith(districtEnabled: !state.districtEnabled));
  }

  void updateCity(String? value) async {
    if (state.cityEnabled) {
      emit(state.copyWith(updateCityState: RequestState.loading));
      final PropertDetailsModel? propertDetailsModel =
          await updateProperty(city: value);
      if (propertDetailsModel != null) {
        emit(state.copyWith(updateCityState: RequestState.success));
        UpdatePropertyUtils.updatePropertyControllers['city']!.text =
            propertDetailsModel.city ?? '';
      }
    }
    emit(state.copyWith(cityEnabled: !state.cityEnabled));

  }

  void updateUnitsCount(String? value) async {
    if (state.unitsCountEnabled) {
      emit(state.copyWith(updateUnitsCountState: RequestState.loading));
      final PropertDetailsModel? propertDetailsModel =
          await updateProperty(unitsCount: int.parse(value!));
      if (propertDetailsModel != null) {
        emit(state.copyWith(updateUnitsCountState: RequestState.success));
        UpdatePropertyUtils.updatePropertyControllers['unitsCount']!.text =
            (propertDetailsModel.unitsCount ?? 0).toString();
      }
    }
    emit(state.copyWith(unitsCountEnabled: !state.unitsCountEnabled));
  }

  void updateBlockNumber(String? value) async {
    if (state.blockNumberEnabled) {
      emit(state.copyWith(updateBlockNumberState: RequestState.loading));
      final PropertDetailsModel? propertDetailsModel =
          await updateProperty(blockNumber: int.parse(value!));
      if (propertDetailsModel != null) {
        emit(state.copyWith(updateBlockNumberState: RequestState.success));
        UpdatePropertyUtils.updatePropertyControllers['blockNumber']!.text =
            (propertDetailsModel.blockNumber ?? 0).toString();
      }
    }
    emit(state.copyWith(blockNumberEnabled: !state.blockNumberEnabled));
  }

  void updatePostalCode(String? value) async {
    if (state.postalCodeEnabled) {
      emit(state.copyWith(updatePostalCodeState: RequestState.loading));
      final PropertDetailsModel? propertDetailsModel =
          await updateProperty(postalCode: int.parse(value!));
      if (propertDetailsModel != null) {
        emit(state.copyWith(updatePostalCodeState: RequestState.success));
        UpdatePropertyUtils.updatePropertyControllers['postalCode']!.text =
            (propertDetailsModel.postalCode ?? 0).toString();
      }
    }
    emit(state.copyWith(postalCodeEnabled: !state.postalCodeEnabled));
  }

  Future<PropertDetailsModel?> updateProperty({
    File? image,
    String? name,
    String? address,
    String? street,
    String? district,
    String? city,
    int? unitsCount,
    int? instrumentNumber,
    int? blockNumber,
    int? postalCode,
  }) async {
    PropertDetailsModel? propertDetailsModel;
    UpdatePropertyRequestModel updatePropertyRequestModel =
        UpdatePropertyRequestModel(
            id: propertyId,
            image: image,
            name: name,
            address: address,
            street: street,
            district: district,
            unitsCount: unitsCount,
            postalCode: postalCode,
            instrumentNumber: instrumentNumber,
            city: city,
            blockNumber: blockNumber);
    final result = await updatePropertyRepository
        .updateProperty(updatePropertyRequestModel);
    result.when(
        success: (updatedModel) {
          propertDetailsModel = updatedModel;
          getIt<PropertyDetailsCubit>()
              .getPropertyDetails(id: updatedModel.id!);
        },
        failure: (_) {});
    return propertDetailsModel;
  }
}
