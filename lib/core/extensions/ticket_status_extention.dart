import '../enums/enums.dart';

extension TicketStatusExtension on TicketStatus {
  static TicketStatus fromString(String value) {
    for (TicketStatus status in TicketStatus.values) {
      if (status.toString().split('.').last == value.toLowerCase()) {
        return status;
      }
    }
    throw ArgumentError('Invalid TicketStatus value: $value');
  }
}
