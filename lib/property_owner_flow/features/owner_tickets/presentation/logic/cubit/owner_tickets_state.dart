part of'owner_tickets_cubit.dart';

@freezed
class OwnerTicketsState with _$OwnerTicketsState{
  const factory OwnerTicketsState({
    @Default(RequestState.loading) RequestState getTicketsState,
    @Default([]) List<TicketModel> tickets,
    @Default(1) int page,
    @Default(1) int selectedTab,
  }) = _Initial;
}