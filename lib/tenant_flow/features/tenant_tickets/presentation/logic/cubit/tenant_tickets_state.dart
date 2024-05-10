part of 'tenant_tickets_cubit.dart';


@freezed
class TenantTicketsState with _$TenantTicketsState {
  const factory TenantTicketsState({
    @Default(RequestState.loading) RequestState getTenantTickets,
    @Default(RequestState.loading) RequestState getTenantUnitsState,
    @Default(RequestState.initial) RequestState sendTicketState,
    @Default([]) List<TicketModel> tickets,
    @Default(1) int page,
    @Default([]) List<int> unitsIDs,
    @Default([]) List<Unit> units,
    @Default(null) TicketStatus? status,
    @Default(null) TicketType? type,
    @Default(null) TicketsStatusModelData? selectType,
    @Default([]) List<File> imagesFile
  }) = _Initial;
}
