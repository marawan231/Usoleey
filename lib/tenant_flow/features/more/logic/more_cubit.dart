import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/network_service/network_exceptions.dart';
import 'package:flutter_complete_project/tenant_flow/features/more/data/models/contact_info_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/more/data/repository/more_repository.dart';
import 'package:flutter_complete_project/tenant_flow/features/terms_and_support/presentation/screens/help_and_support_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/enums.dart';

part 'more_cubit.freezed.dart';

part 'more_state.dart';

class MoreCubit extends Cubit<MoreState> {
  MoreCubit(this.moreRepository) : super(const _Initial());
  final MoreRepository moreRepository;

  void getContactInfo() async {
    var result = await moreRepository.getContactsInfo();

    result.when(
      success: (response) {
        inspect(response.data!);
        supportList[0].subtitle = response.data?[0].phonNumber ?? '';
        supportList[1].subtitle = response.data?[0].email ?? '';
        emit(state.copyWith(
            getContactsRequestState: RequestState.success,
            contactsData: response.data!));
      },
      failure: (networkExceptions) {
        DioExceptionType.getErrorMessage(networkExceptions);
        emit(state.copyWith(getContactsRequestState: RequestState.error));
      },
    );
  }
}
