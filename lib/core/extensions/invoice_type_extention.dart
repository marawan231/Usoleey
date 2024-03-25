import '../enums/enums.dart';

extension InvoiceTypeExtension on InvoiceType {
  static InvoiceType fromString(String value) {
    for (InvoiceType status in InvoiceType.values) {
      if (status.toString().split('.').last == value.toLowerCase()) {
        return status;
      }
    }
    throw ArgumentError('Invalid InvoiceType value: $value');
  }
}
