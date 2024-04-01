part of 'my_tickets_cubit.dart';

@freezed
class MyTicketsState with _$MyTicketsState {
  const factory MyTicketsState({
    @Default(RequestState.loading) RequestState getReviewingTicketsState,
    @Default(RequestState.loading) RequestState getProcessingTicketsState,
    @Default(RequestState.loading) RequestState getSolvedTicketsState,
    @Default([]) List<TicketModel> reviewingTickets,
    @Default([]) List<TicketModel> processingTickets,
    @Default([]) List<TicketModel> solvedTickets,
    @Default(1) int reviewingPage,
    @Default(1) int processingPage,
    @Default(1) int solvedPage,
  }) = _Initial;
}
