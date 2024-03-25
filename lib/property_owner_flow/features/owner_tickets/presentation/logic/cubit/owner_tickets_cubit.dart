import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/enums/enums.dart';
import '../../../../owner_home/data/models/home_model.dart';
import '../../../data/repository/owner_tickets_repository.dart';

part 'owner_tickets_state.dart';

part 'owner_tickets_cubit.freezed.dart';

class OwnerTicketsCubit extends Cubit<OwnerTicketsState> {
  final OwnerTicketsRepository ownerTicketsRepository;

  OwnerTicketsCubit(this.ownerTicketsRepository) : super(const _Initial());

  int count = 0;

  Future<void> getTickets() async {
    final result =
        await ownerTicketsRepository.getOwnerTickets(page: state.page);

    result.when(success: (ticketModel) {
      List<TicketModel> newList = List.from(state.tickets)
        ..addAll(ticketModel.tickets ?? []);
      count = ticketModel.pagination!.count!;
      emit(state.copyWith(
          tickets: ticketModel.tickets ?? [],
          getTicketsState: RequestState.success,
          page: state.page + 1));
    }, failure: (failure) {
      emit(state.copyWith(getTicketsState: RequestState.error));
    });
  }

  List<TicketModel> filterTickets(List<TicketModel> allTickets) {
    List<TicketModel> filteredList = [];
    switch (state.selectedTab) {
      case 1:
        filteredList = allTickets;
      case 2:
        filteredList = allTickets
            .where((element) => element.status == 'REVIEWING')
            .toList();
      case 3:
        filteredList = allTickets
            .where((element) => element.status == 'PROCESSING')
            .toList();
      case 4:
        filteredList =
            allTickets.where((element) => element.status == 'SOLVED').toList();
      case 5:
        filteredList = allTickets
            .where((element) => element.status == 'CANCELED')
            .toList();
    }
    return filteredList;
  }

  void tabBarOnChange(int index) {
    emit(state.copyWith(selectedTab: index));
  }
}
