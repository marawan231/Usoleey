class GetInvoicesQueryModdel {
  final String? type;
  final int page, limit;

  GetInvoicesQueryModdel({this.type, required this.page, required this.limit});

  Map<String, dynamic> toJson() => {'type': type, 'page': page, 'limit': limit};
}
