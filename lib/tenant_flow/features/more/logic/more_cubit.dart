import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/network_service/network_exceptions.dart';
import 'package:flutter_complete_project/tenant_flow/features/more/data/models/contact_info_model.dart';
import 'package:flutter_complete_project/tenant_flow/features/more/data/repository/more_repository.dart';
import 'package:flutter_complete_project/tenant_flow/features/more/logic/more_state.dart';
import 'package:flutter_complete_project/tenant_flow/features/terms_and_support/presentation/screens/help_and_support_view.dart';

class MoreCubit extends Cubit<MoreState> {
  MoreCubit(this.moreRepository) : super(const MoreState.idle());
  final MoreRepository moreRepository;

  List<ContactInfoModelData> contactInfo = [];

  void getContactInfo() async {
    emit(const MoreState.getContactInfoLoading());
    var result = await moreRepository.getContactsInfo();

    result.when(
      success: (response) {
        inspect(response.data!);
        contactInfo = response.data!;
        supportList[0].subtitle = response.data![0].phonNumber;
        supportList[1].subtitle = response.data![0].email;
        emit(MoreState.getContactInfoSuccess(response.data!));
      },
      failure: (networkExceptions) {
        final error = DioExceptionType.getErrorMessage(networkExceptions);
        emit(MoreState.getContactInfoError(error));
      },
    );
  }
}
