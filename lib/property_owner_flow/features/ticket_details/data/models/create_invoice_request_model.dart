import 'dart:io';

class CreateInvoiceRequestModel {
  File file;
  int unitId;
  int ticketId;

  CreateInvoiceRequestModel({
    required this.file,
    required this.unitId,
    required this.ticketId,
  });

  Map<String, dynamic> toJson() => {
        'file': file,
        'unitId': unitId,
        'ticketId': ticketId,
      };
}
