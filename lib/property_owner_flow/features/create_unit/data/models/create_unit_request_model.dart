import 'dart:io';

class CreateUnitRequestModel {
  final String name;
  final num rent;
  final DateTime rentCollectionDate;
  final String electricityAccount;
  final String waterAccount;
  final String address;
  final int space;
  final int rooms;
  final int bathrooms;
  final bool lounge;
  final int conditioners;
  final bool kitchen;
  final int propertyId;
  final int ownerId;
  final File image;

  CreateUnitRequestModel(
      {required this.name,
      required this.rent,
      required this.rentCollectionDate,
      required this.electricityAccount,
      required this.waterAccount,
      required this.address,
      required this.space,
      required this.rooms,
      required this.bathrooms,
      required this.lounge,
      required this.conditioners,
      required this.kitchen,
      required this.propertyId,
      required this.ownerId,
      required this.image
      });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'rent': rent,
      'rentCollectionDate': rentCollectionDate.toIso8601String(),
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
