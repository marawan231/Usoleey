import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/network_service/network_exceptions.dart';
import 'package:flutter_complete_project/features/tickets/data/models/tickets_model.dart';
import 'package:flutter_complete_project/features/tickets/data/models/tickets_status_model.dart';
import 'package:flutter_complete_project/features/tickets/data/repository/tickets_repository.dart';
import 'package:flutter_complete_project/features/tickets/presentation/logic/cubit/tickets_state.dart';

class TicketsCubit extends Cubit<TicketsState> {
  TicketsCubit(this.ticketsRepository) : super(const TicketsState.idle());
  final TicketsRepository ticketsRepository;
  List<TicketsStatusModelData> ticketsStatus = [];
  List<TicketsStatusModelData> ticketsTypes = [];
  TicketsStatusModelData? selectedTicketStatus;
  TicketsStatusModelData? selectedTicketType;
  List<Ticket> tickets = [];

  void resetAll() {
    emit(const TicketsState.resetAllLoading());
    selectedTicketStatus = null;
    selectedTicketType = null;
    emit(const TicketsState.resetAllSuccess());
  }

  void selectTicketStatus(TicketsStatusModelData ticketStatus) {
    emit(TicketsState.selectTicketStatusLoading());
    selectedTicketStatus = ticketStatus;
    emit(TicketsState.selectTicketStatusSuccess(ticketStatus));
  }

  void getAllTicketsStatus() async {
    emit(const TicketsState.getAllTicketsLoading());
    var result = await ticketsRepository.getTicketsStatus();

    result.when(
      success: (response) {
        inspect(response.data!);
        ticketsStatus = response.data!;
        emit(TicketsState.getAllTicketsSuccess(response.data!));
      },
      failure: (networkExceptions) {
        final error = DioExceptionType.getErrorMessage(networkExceptions);
        emit(TicketsState.getAllTicketsError(error));
      },
    );
  }

  //get all ticke types
  void getAllTicketTypes() async {
    emit(const TicketsState.getAllTicketTypesLoading());
    var result = await ticketsRepository.getTicketTypes();

    result.when(
      success: (response) {
        inspect(response.data!);
        ticketsTypes = response.data!;
        emit(TicketsState.getAllTicketTypesSuccess(response.data!));
      },
      failure: (networkExceptions) {
        final error = DioExceptionType.getErrorMessage(networkExceptions);
        emit(TicketsState.getAllTicketTypesError(error));
      },
    );
  }

  void selectTicketType(TicketsStatusModelData ticketType) {
    emit(TicketsState.selectTicketTypeLoading());
    selectedTicketType = ticketType;
    emit(TicketsState.selectTicketTypeSuccess(ticketType));
  }

  //get all tickets
  void getAllTickets() async {
    emit(const TicketsState.getAllTicketsLoading());
    var result = await ticketsRepository.getAllTickets();

    result.when(
      success: (response) {
        inspect(response.data!);
        tickets = response.data!;
        emit(TicketsState.getAllTicketsSuccess(response.data!));
      },
      failure: (networkExceptions) {
        final error = DioExceptionType.getErrorMessage(networkExceptions);
        emit(TicketsState.getAllTicketsError(error));
      },
    );
  }
}
