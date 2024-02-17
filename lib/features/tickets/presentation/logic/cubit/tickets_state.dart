// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_complete_project/features/tickets/data/models/tickets_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets_state.freezed.dart';

@freezed
class TicketsState<T> with _$TicketsState<T> {
  const factory TicketsState.idle() = Idle<T>;
  const factory TicketsState.getAllTicketsLoading() = GetAllTicketsLoading<T>;
  const factory TicketsState.getAllTicketsSuccess(List<Ticket> tickets) =
      GetAllTicketsSuccess<T>;
  const factory TicketsState.getAllTicketsError(String error) =
      GetAllTicketsError<T>;

//selected ticket status loading
  const factory TicketsState.selectTicketStatusLoading() =
      selectTicketStatusLoading<T>;
  const factory TicketsState.selectTicketStatusSuccess(T ticketStatus) =
      SelectTicketStatusSuccess<T>;
  //get all ticke types

  const factory TicketsState.getAllTicketTypesLoading() =
      GetAllTicketTypesLoading<T>;

  const factory TicketsState.getAllTicketTypesSuccess(List<T> ticketTypes) =
      GetAllTicketTypesSuccess<T>;

  const factory TicketsState.getAllTicketTypesError(String error) =
      GetAllTicketTypesError<T>;

  const factory TicketsState.selectTicketTypeLoading() =
      SelectTicketTypeLoading<T>;

  const factory TicketsState.selectTicketTypeSuccess(T ticketType) =
      SelectTicketTypeSuccess<T>;
  //reset all
  const factory TicketsState.resetAllLoading() = ResetAllLoading<T>;
  const factory TicketsState.resetAllSuccess() = ResetAllSuccess<T>;
  //get all tickets status
  const factory TicketsState.getTicketsStatusLoading() =
      GetTicketsStatusLoading<T>;

  const factory TicketsState.getAllTicketsStatusSuccess(List<T> ticketsStatus) =
      GetAllTicketsStatusSuccess<T>;
  const factory TicketsState.getAllTicketsStatusError(String error) =
      GetAllTicketsStatusError<T>;
}
