class CreatePropertyRequestModel {
  final String name, address, instrumentNumber, street, district, city;

  final int unitsCount, ownerId, blockNumber, postalCode;

  CreatePropertyRequestModel(
      {required this.name,
      required this.address,
      required this.instrumentNumber,
      required this.postalCode,
      required this.blockNumber,
      required this.street,
      required this.district,
      required this.city,
      required this.unitsCount,
      required this.ownerId});

  Map<String, dynamic> toJson() => {
        'name': name,
        'address': address,
        'instrumentNumber': instrumentNumber,
        'postalCode': postalCode,
        'blockNumber': blockNumber,
        'street': street,
        // 'subNumber': subNumber,
        'district': district,
        'city': city,
        'unitsCount': unitsCount,
        'ownerId': ownerId,
      };
}
