// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ticket_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateTicketResponseModel _$CreateTicketResponseModelFromJson(
        Map<String, dynamic> json) =>
    CreateTicketResponseModel(
      data: json['data'] == null
          ? null
          : CreateTicketResponseModelData.fromJson(
              json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CreateTicketResponseModelToJson(
        CreateTicketResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'message': instance.message,
    };

CreateTicketResponseModelData _$CreateTicketResponseModelDataFromJson(
        Map<String, dynamic> json) =>
    CreateTicketResponseModelData(
      description: json['description'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
      unitId: json['unitId'] as int?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      unit: json['unit'] == null
          ? null
          : Unit.fromJson(json['unit'] as Map<String, dynamic>),
      id: json['id'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$CreateTicketResponseModelDataToJson(
        CreateTicketResponseModelData instance) =>
    <String, dynamic>{
      'description': instance.description,
      'status': instance.status,
      'type': instance.type,
      'unitId': instance.unitId,
      'images': instance.images,
      'unit': instance.unit?.toJson(),
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

Unit _$UnitFromJson(Map<String, dynamic> json) => Unit(
      id: json['id'] as int?,
      name: json['name'] as String?,
      rent: json['rent'] as int?,
      rentCollectionDate: json['rentCollectionDate'] as String?,
      electricityAccount: json['electricityAccount'] as String?,
      waterAccount: json['waterAccount'] as String?,
      waterCost: json['waterCost'] as String?,
      address: json['address'] as String?,
      space: json['space'] as int?,
      rooms: json['rooms'] as int?,
      bathrooms: json['bathrooms'] as int?,
      lounge: json['lounge'] as bool?,
      conditioners: json['conditioners'] as int?,
      kitchen: json['kitchen'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      tenantId: json['tenantId'] as int?,
      propertyId: json['propertyId'] as int?,
      ownerId: json['ownerId'] as int?,
      enterpriseId: json['enterpriseId'] as int?,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      property: json['property'] == null
          ? null
          : Property.fromJson(json['property'] as Map<String, dynamic>),
      details: (json['details'] as List<dynamic>?)
          ?.map((e) => Details.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UnitToJson(Unit instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rent': instance.rent,
      'rentCollectionDate': instance.rentCollectionDate,
      'electricityAccount': instance.electricityAccount,
      'waterAccount': instance.waterAccount,
      'waterCost': instance.waterCost,
      'address': instance.address,
      'space': instance.space,
      'rooms': instance.rooms,
      'bathrooms': instance.bathrooms,
      'lounge': instance.lounge,
      'conditioners': instance.conditioners,
      'kitchen': instance.kitchen,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'tenantId': instance.tenantId,
      'propertyId': instance.propertyId,
      'ownerId': instance.ownerId,
      'enterpriseId': instance.enterpriseId,
      'owner': instance.owner?.toJson(),
      'property': instance.property?.toJson(),
      'details': instance.details?.map((e) => e.toJson()).toList(),
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      id: json['id'] as int?,
      phoneNumber: json['phoneNumber'] as String?,
      photo: json['photo'] as String?,
      password: json['password'] as String?,
      email: json['email'] as String?,
      firstNameEn: json['firstNameEn'] as String?,
      lastNameEn: json['lastNameEn'] as String?,
      firstNameAr: json['firstNameAr'] as String?,
      lastNameAr: json['lastNameAr'] as String?,
      role: json['role'] as String?,
      deviceId: json['deviceId'] as String?,
      fcmToken: json['fcmToken'] as String?,
      deviceType: json['deviceType'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      enterpriseId: json['enterpriseId'] as int?,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'photo': instance.photo,
      'password': instance.password,
      'email': instance.email,
      'firstNameEn': instance.firstNameEn,
      'lastNameEn': instance.lastNameEn,
      'firstNameAr': instance.firstNameAr,
      'lastNameAr': instance.lastNameAr,
      'role': instance.role,
      'deviceId': instance.deviceId,
      'fcmToken': instance.fcmToken,
      'deviceType': instance.deviceType,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'enterpriseId': instance.enterpriseId,
    };

Property _$PropertyFromJson(Map<String, dynamic> json) => Property(
      id: json['id'] as int?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      unitsCount: json['unitsCount'] as int?,
      instrumentNumber: json['instrumentNumber'] as String?,
      postalCode: json['postalCode'] as String?,
      blockNumber: json['blockNumber'] as String?,
      street: json['street'] as String?,
      subNumber: json['subNumber'] as String?,
      district: json['district'] as String?,
      city: json['city'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      enterpriseId: json['enterpriseId'] as int?,
      ownerId: json['ownerId'] as int?,
    );

Map<String, dynamic> _$PropertyToJson(Property instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'unitsCount': instance.unitsCount,
      'instrumentNumber': instance.instrumentNumber,
      'postalCode': instance.postalCode,
      'blockNumber': instance.blockNumber,
      'street': instance.street,
      'subNumber': instance.subNumber,
      'district': instance.district,
      'city': instance.city,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'enterpriseId': instance.enterpriseId,
      'ownerId': instance.ownerId,
    };

Details _$DetailsFromJson(Map<String, dynamic> json) => Details(
      name: json['name'] as String?,
      value: json['value'] as int?,
    );

Map<String, dynamic> _$DetailsToJson(Details instance) => <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };
