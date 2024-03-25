import '../enums/enums.dart';

extension TicketTypeExtension on TicketType {
  static TicketType fromString(String value) {
    for (TicketType type in TicketType.values) {
      if (type.toString().split('.').last == value.toLowerCase()) {
        return type;
      }
    }
    throw ArgumentError('Invalid TicketType value: $value');
  }
}
