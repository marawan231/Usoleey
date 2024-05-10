class RateRequestModel {
  final int stars, ticketId, userId;
  final String? feedback;

  RateRequestModel(
      {required this.stars,
      required this.ticketId,
      this.feedback,
      required this.userId});

  Map<String, dynamic> toJson() => {
        'stars': stars,
        'userId': userId,
        'ticketId': ticketId,
        'feedback': feedback
      };
}
