import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/extensions/map_text_editing_controller.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/core/shared_cubits/user_cubit/user_cubit.dart';
import 'package:flutter_complete_project/core/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/enums/enums.dart';
import '../../../../../../core/network_service/network_exceptions.dart';
import '../../../data/models/create_property_request.dart';
import '../../../data/repository/create_property_repository.dart';

part 'create_property_cubit.freezed.dart';
part 'create_property_state.dart';

class CreatePropertyCubit extends Cubit<CreatePropertyState> {
  final CreatePropertyRepository createPropertyRepository;

  CreatePropertyCubit(this.createPropertyRepository) : super(const _Initial());

  void createProperty(
      {required GlobalKey<FormState> formKey,
      required Map<String, TextEditingController> createPropertyControllers}) {
    if (!formKey.currentState!.validate()) {
      return;
    }
    emit(state.copyWith(createPropertyState: RequestState.loading));
    final user = getIt<UserCubit>().state.userModel;
    final data = createPropertyControllers.data();
    final CreatePropertyRequestModel createPropertyRequestModel =
        CreatePropertyRequestModel(
            name: data['name'],
            address: data['address'],
            instrumentNumber: data['instrumentNumber'],
            postalCode: int.parse(data['postalCode']),
            blockNumber: int.parse(data['unitNumber']),
            street: data['street'],
            district: data['district'],
            city: data['city'],
            unitsCount: int.parse(data['unitsCount']),
            ownerId: user?.id ?? 0);
    createPropertyRequest(createPropertyRequestModel);
  }

  Future<void> createPropertyRequest(
      CreatePropertyRequestModel createPropertyRequestModel) async {
    final result = await createPropertyRepository
        .createProperty(createPropertyRequestModel);
    result.when(success: (response) {
      emit(state.copyWith(createPropertyState: RequestState.success));
      Go.back();
    }, failure: (networkExceptions) {
      emit(state.copyWith(createPropertyState: RequestState.error));
      final error = DioExceptionType.getErrorMessage(networkExceptions);
      showToast(message: error);
    });
  }



}
