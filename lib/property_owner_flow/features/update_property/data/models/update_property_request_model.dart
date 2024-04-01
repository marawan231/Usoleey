import 'dart:io';

class UpdatePropertyRequestModel {
  String id;
  File? image;
  String? name;
  String? address;
  String? street;
  String? district;
  String? city;
  int? unitsCount;
  int? instrumentNumber;
  int? blockNumber;
  int? postalCode;
  int? ownerId;

  UpdatePropertyRequestModel({
    required this.id,
    this.image,
    this.name,
    this.address,
    this.street,
    this.district,
    this.city,
    this.blockNumber,
    this.unitsCount,
    this.instrumentNumber,
    this.postalCode,
    this.ownerId,
  });
}
