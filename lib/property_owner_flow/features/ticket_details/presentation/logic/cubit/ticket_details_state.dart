part of 'ticket_details_cubit.dart';

@freezed
class TicketDetailsState with _$TicketDetailsState {
  const factory TicketDetailsState({
    @Default(RequestState.loading) RequestState getTicketDetailsState,
    @Default(RequestState.initial) RequestState updateTicketStatus,
    TicketDetailsModel? ticketDetailsModel,
    File? pdfFile
  }) = _Initial;
}
