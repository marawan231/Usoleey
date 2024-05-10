import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/navigator/navigator.dart';
import 'package:flutter_complete_project/tenant_flow/features/tenant_tickets/data/models/create_ticket_request_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/enums/enums.dart';
import '../../../../../../core/res/assets_manager.dart';
import '../../../../../../core/shared_models/owner_unit_model.dart';
import '../../../../../../core/utils/utils.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../../property_owner_flow/features/owner_home/data/models/home_model.dart';
import '../../../../home/presentation/logic/cubit/home_cubit.dart';
import '../../../data/models/get_tenant_tickets_filter_model.dart';
import '../../../data/models/tickets_status_model.dart';
import '../../../data/repository/tenant_tickets_repository.dart';
import '../../widgets/create_ticket_view.dart';

part 'tenant_tickets_cubit.freezed.dart';

part 'tenant_tickets_state.dart';

class TenantTicketsCubit extends Cubit<TenantTicketsState> {
  TenantTicketsCubit(this.tenantTicketsRepository) : super(const _Initial());
  final TenantTicketsRepository tenantTicketsRepository;
  List<File> imagesFile = [];

  int count = 0;

  late List<TicketsStatusModelData> ticketsTypes;

  //ticket controller
  TextEditingController contentController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future pickImageFromCamera(BuildContext context) async {
    final files = await getImages();
    if (files.isEmpty) return;
    List<File> newList = List.from(state.imagesFile)..addAll(files);
    emit(state.copyWith(imagesFile: newList));
  }

  deleteImage(int index) {
    // emit(TenantTicketsState.imageSelectedDeletedLoading());
    emit(state.copyWith(
        imagesFile: List.from(state.imagesFile)..removeAt(index)));
  }

  void onReorder(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    final item = imagesFile.removeAt(oldIndex);
    imagesFile.insert(newIndex, item);
    emit(state.copyWith(imagesFile: imagesFile));
  }

  void resetAll() {
    emit(state.copyWith(selectType: null, imagesFile: []));
    contentController.clear();
  }

  void selectTicket(TicketsStatusModelData? ticketType) {
    emit(state.copyWith(selectType: ticketType));
  }

  Future<void> getTenantTickets({
    bool firstTime = false,
    bool cleareFilter = false,
  }) async {
    if (cleareFilter) clearFilterValues();
    if (firstTime) {
      emit(state.copyWith(
          page: 1, tickets: [], getTenantTickets: RequestState.loading));
    }
    if (count != 0 && state.tickets.length > count) {
      return;
    }
    GetTenantTicketsFilterModel getTenantTicketsFilterModel =
        GetTenantTicketsFilterModel(
            page: state.page,
            units: state.unitsIDs,
            status: state.status != null
                ? state.status.toString().toUpperCase().split('.').last
                : null,
            type: state.type != null
                ? state.type.toString().toString().toUpperCase().split('.').last
                : null);

    final result = await tenantTicketsRepository.getMyTickets(
        getTenantTicketsFilterModel: getTenantTicketsFilterModel);
    result.when(success: (ticketModel) {
      List<TicketModel> newList = List.from(state.tickets)
        ..addAll(ticketModel.tickets ?? []);
      count = ticketModel.pagination!.count!;
      emit(state.copyWith(
          tickets: newList,
          getTenantTickets: RequestState.success,
          page: state.page + 1));
    }, failure: (failure) {
      emit(state.copyWith(getTenantTickets: RequestState.error));
    });
  }

  Future<void> getMyUnits() async {
    final result = await tenantTicketsRepository.getMyUnits();
    result.when(success: (unitModel) {
      emit(state.copyWith(
          units: unitModel.units ?? [],
          getTenantUnitsState: RequestState.success));
    }, failure: (failure) {
      emit(state.copyWith(getTenantUnitsState: RequestState.error));
    });
  }

  void selectTicketType(TicketType type) {
    if (type == state.type) {
      emit(state.copyWith(type: null));
    } else {
      emit(state.copyWith(type: type));
    }
  }

  void selectUnit(int id) {
    List<int> newList = [];
    if (state.unitsIDs.contains(id)) {
      newList = List.from(state.unitsIDs)..remove(id);
    } else {
      newList = List.from(state.unitsIDs)..add(id);
    }
    emit(state.copyWith(unitsIDs: newList));
  }

  void selectTicketStatus(TicketStatus status) {
    if (status == state.status) {
      emit(state.copyWith(status: null));
    } else {
      emit(state.copyWith(status: status));
    }
  }

  void clearFilterValues() {
    emit(state.copyWith(
        type: null,
        status: null,
        unitsIDs: [],
        sendTicketState: RequestState.initial));
  }

  int ticketId = 0;

  Future<void> sendTicket() async {
    if (!formKey.currentState!.validate()) return;
    emit(state.copyWith(sendTicketState: RequestState.loading));
    CreateTicketRequestModel createTicketRequestModel =
        CreateTicketRequestModel(
            description: contentController.text,
            type:
                state.selectType!.type.toString().toUpperCase().split('.').last,
            unitId: getIt<HomeCubit>().selectedUnit?.id ?? 0,
            images: state.imagesFile);
    final result =
        await tenantTicketsRepository.createTicket(createTicketRequestModel);
    result.when(
        success: (ticketDetailsModel) {
          ticketId = ticketDetailsModel.id ?? 0;
          emit(state.copyWith(sendTicketState: RequestState.success));
          resetAll();
          getIt<HomeCubit>().resetAll();
          getIt<HomeCubit>().changeBottomSheetSelectedView(3);
        },
        failure: (failure) {});
  }

  openTicketCreationFlow(context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        isDismissible: false,
        enableDrag: false,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r)),
        ),
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: BlocProvider.value(
              value: getIt<HomeCubit>(),
              child: CreateTicketView(),
            ),
          );
        });
  }
}
