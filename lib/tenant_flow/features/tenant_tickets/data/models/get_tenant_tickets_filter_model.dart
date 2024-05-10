class GetTenantTicketsFilterModel {
  List<int>? units;
  String? type, status;
  int page, limit;

  GetTenantTicketsFilterModel(
      {this.units,
      this.type,
      this.status,
      required this.page,
      this.limit = 12});

  Map<String, dynamic> toJson() => {
        'units': units,
        'status': status,
        'type': type,
        'page': page,
        'limit': limit
      };
}
