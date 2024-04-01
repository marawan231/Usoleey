import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/property_owner_flow/features/my_tickets/data/models/get_my_tickets_query_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/enums/enums.dart';
import '../../../../owner_home/data/models/home_model.dart';
import '../../../data/repository/my_tickets_repository.dart';

part 'my_tickets_cubit.freezed.dart';
part 'my_tickets_state.dart';

class MyTicketsCubit extends Cubit<MyTicketsState> {
  final MyTicketsRepository myTicketsRepository;

  MyTicketsCubit(this.myTicketsRepository) : super(const _Initial());

  int reviewingCount = 0;
  int processingCount = 0;
  int solvedCount = 0;

  Future<void> getReviewingTickets({bool firstTime = false}) async {
    GetMyTicketsQueryModel getMyTicketsQueryModel =
        GetMyTicketsQueryModel(page: state.reviewingPage, status: 'REVIEWING');
    if (firstTime) {
      emit(state.copyWith(
          reviewingPage: 1,
          reviewingTickets: [],
          getReviewingTicketsState: RequestState.loading));
    }
    if (reviewingCount != 0 &&
        state.reviewingTickets.length >= reviewingCount) {
      return;
    }
    final result = await myTicketsRepository.getMyTickets(
        getMyTicketsQueryModel: getMyTicketsQueryModel);
    result.when(success: (ticketModel) {
      List<TicketModel> newList = List.from(state.reviewingTickets)
        ..addAll(ticketModel.tickets ?? []);
      reviewingCount = ticketModel.pagination!.count!;
      emit(state.copyWith(
          reviewingTickets: newList,
          getReviewingTicketsState: RequestState.success,
          reviewingPage: state.reviewingPage + 1));
    }, failure: (failure) {
      emit(state.copyWith(getReviewingTicketsState: RequestState.error));
    });
  }

  Future<void> getProcessingTickets({bool firstTime = false}) async {
    if (firstTime) {
      emit(state.copyWith(
          processingPage: 1,
          processingTickets: [],
          getProcessingTicketsState: RequestState.loading));
    }
    if (processingCount != 0 &&
        state.processingTickets.length >= processingCount) {
      return;
    }

    GetMyTicketsQueryModel getMyTicketsQueryModel = GetMyTicketsQueryModel(
        page: state.processingPage, status: 'PROCESSING');

    final result = await myTicketsRepository.getMyTickets(
        getMyTicketsQueryModel: getMyTicketsQueryModel);
    result.when(success: (ticketModel) {
      List<TicketModel> newList = List.from(state.processingTickets)
        ..addAll(ticketModel.tickets ?? []);
      processingCount = ticketModel.pagination!.count!;
      emit(state.copyWith(
          processingTickets: newList,
          getProcessingTicketsState: RequestState.success,
          processingPage: state.processingPage + 1));
    }, failure: (failure) {
      emit(state.copyWith(getProcessingTicketsState: RequestState.error));
    });
  }

  Future<void> getSolvedTickets({bool firstTime = false}) async {
    if (firstTime) {
      emit(state.copyWith(
          solvedPage: 1,
          solvedTickets: [],
          getSolvedTicketsState: RequestState.loading));
    }
    if (solvedCount != 0 && state.solvedTickets.length > solvedCount) {
      return;
    }
    GetMyTicketsQueryModel getMyTicketsQueryModel =
        GetMyTicketsQueryModel(page: state.solvedPage, status: 'SOLVED');

    final result = await myTicketsRepository.getMyTickets(
        getMyTicketsQueryModel: getMyTicketsQueryModel);
    result.when(success: (ticketModel) {
      List<TicketModel> newList = List.from(state.solvedTickets)
        ..addAll(ticketModel.tickets ?? []);
      solvedCount = ticketModel.pagination!.count!;
      emit(state.copyWith(
          solvedTickets: newList,
          getSolvedTicketsState: RequestState.success,
          solvedPage: state.solvedPage + 1));
    }, failure: (failure) {
      emit(state.copyWith(getSolvedTicketsState: RequestState.error));
    });
  }
}
