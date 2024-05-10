class GetMyTicketsQueryModel {
  final String? status;
  final int page, limit;

  GetMyTicketsQueryModel(
      {this.status, required this.page, required this.limit});

  Map<String, dynamic> toJson() =>
      {'status': status, 'page': page, 'limit': limit};
}
