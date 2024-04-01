class GetMyTicketsQueryModel {
  final String? status;
  final int page;

  GetMyTicketsQueryModel({this.status, required this.page});

  Map<String, dynamic> toJson() =>
      {'status': status, 'page': page, 'limit': "8"};
}
