import '../../../../../core/enums/enums.dart';

class TicketsStatusModelData {
  int? id;
  String? label;
  String? subTitle;
  String? icon;
  TicketType? type;

  TicketsStatusModelData(
      {this.id, this.label, this.subTitle, this.icon, this.type});
}
