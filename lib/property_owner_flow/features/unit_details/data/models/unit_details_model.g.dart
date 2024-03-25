// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnitDetailsModel _$UnitDetailsModelFromJson(Map<String, dynamic> json) =>
    UnitDetailsModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      rent: json['rent'] as int?,
      rentCollectionDate: json['rentCollectionDate'] as String?,
      electricityAccount: json['electricityAccount'] as String?,
      waterAccount: json['waterAccount'] as String?,
      waterCost: json['waterCost'],
      address: json['address'] as String?,
      space: json['space'] as int?,
      rooms: json['rooms'] as int?,
      bathrooms: json['bathrooms'] as int?,
      lounge: json['lounge'] as bool?,
      conditioners: json['conditioners'] as int?,
      kitchen: json['kitchen'] as bool?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      tenantId: json['tenantId'] as int?,
      propertyId: json['propertyId'] as int?,
      ownerId: json['ownerId'] as int?,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      property: json['property'] == null
          ? null
          : Property.fromJson(json['property'] as Map<String, dynamic>),
      tenant: json['tenant'] == null
          ? null
          : TenantModel.fromJson(json['tenant'] as Map<String, dynamic>),
      details: (json['details'] as List<dynamic>?)
          ?.map((e) => Detail.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..ticketsCount = json['ticketsCount'] as int?
      ..invoicesCount = json['invoicesCount'] as int?
      ..invoices = (json['invoices'] as List<dynamic>?)
          ?.map((e) => InvoiceModel.fromJson(e as Map<String, dynamic>))
          .toList()
      ..tickets = (json['tickets'] as List<dynamic>?)
          ?.map((e) => TicketModel.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$UnitDetailsModelToJson(UnitDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rent': instance.rent,
      'rentCollectionDate': instance.rentCollectionDate,
      'electricityAccount': instance.electricityAccount,
      'waterAccount': instance.waterAccount,
      'waterCost': instance.waterCost,
      'address': instance.address,
      'space': instance.space,
      'ticketsCount': instance.ticketsCount,
      'invoicesCount': instance.invoicesCount,
      'rooms': instance.rooms,
      'bathrooms': instance.bathrooms,
      'lounge': instance.lounge,
      'conditioners': instance.conditioners,
      'kitchen': instance.kitchen,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'tenantId': instance.tenantId,
      'propertyId': instance.propertyId,
      'ownerId': instance.ownerId,
      'owner': instance.owner,
      'property': instance.property,
      'tenant': instance.tenant,
      'details': instance.details,
      'invoices': instance.invoices,
      'tickets': instance.tickets,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      phoneNumber: json['phoneNumber'] as String?,
      firstNameEn: json['firstNameEn'] as String?,
      lastNameEn: json['lastNameEn'] as String?,
      firstNameAr: json['firstNameAr'] as String?,
      lastNameAr: json['lastNameAr'] as String?,
      fcmToken: json['fcmToken'] as String?,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'firstNameEn': instance.firstNameEn,
      'lastNameEn': instance.lastNameEn,
      'firstNameAr': instance.firstNameAr,
      'lastNameAr': instance.lastNameAr,
      'fcmToken': instance.fcmToken,
      'language': instance.language,
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
      district: json['district'] as String?,
      city: json['city'] as String?,
      image: json['image'] as String?,
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
      'district': instance.district,
      'city': instance.city,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'enterpriseId': instance.enterpriseId,
      'ownerId': instance.ownerId,
    };

Detail _$DetailFromJson(Map<String, dynamic> json) => Detail(
      name: json['name'] as String?,
      value: json['value'],
    );

Map<String, dynamic> _$DetailToJson(Detail instance) => <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };
