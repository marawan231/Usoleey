import 'dart:io';

class UpdateUnitRequestModel {
  final String? name;
  final num? rent;
  final DateTime? rentCollectionDate;
  final String? electricityAccount;
  final String? waterAccount;
  final String? address;
  final num? space;
  final int? rooms;
  final int? bathrooms;
  final bool? lounge;
  final int? conditioners;
  final bool? kitchen;
  final int? propertyId;
  final int? ownerId;
  final File? image;
  final String id;

  UpdateUnitRequestModel(
      this.name,
      this.rent,
      this.rentCollectionDate,
      this.electricityAccount,
      this.waterAccount,
      this.address,
      this.space,
      this.rooms,
      this.bathrooms,
      this.lounge,
      this.conditioners,
      this.kitchen,
      this.propertyId,
      this.ownerId,
      this.image, this.id);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'rent': rent,
      'rentCollectionDate': rentCollectionDate?.toIso8601String(),
      'electricityAccount': electricityAccount,
      'waterAccount': waterAccount,
      'address': address,
      'space': space,
      'rooms': rooms,
      'bathrooms': bathrooms,
      'lounge': lounge,
      'conditioners': conditioners,
      'kitchen': kitchen,
      'propertyId': propertyId,
      'ownerId': ownerId,
      'image': image,
    };
  }
}
