// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketDetailsModel _$TicketDetailsModelFromJson(Map<String, dynamic> json) =>
    TicketDetailsModel(
      id: json['id'] as int?,
      description: json['description'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      unitId: json['unitId'] as int?,
      unit: json['unit'] == null
          ? null
          : Unit.fromJson(json['unit'] as Map<String, dynamic>),
    )..images =
        (json['images'] as List<dynamic>?)?.map((e) => e as String).toList();

Map<String, dynamic> _$TicketDetailsModelToJson(TicketDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'status': instance.status,
      'type': instance.type,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'unitId': instance.unitId,
      'unit': instance.unit,
      'images': instance.images,
    };

Unit _$UnitFromJson(Map<String, dynamic> json) => Unit(
      id: json['id'] as int?,
      name: json['name'] as String?,
      rent: json['rent'] as int?,
      electricityAccount: json['electricityAccount'] as String?,
      waterAccount: json['waterAccount'] as String?,
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
      enterpriseId: json['enterpriseId'] as int?,
      tenant: json['tenant'] == null
          ? null
          : Tenant.fromJson(json['tenant'] as Map<String, dynamic>),
      property: json['property'] == null
          ? null
          : PropertyModel.fromJson(json['property'] as Map<String, dynamic>),
    )..rentCollectionDate = json['rentCollectionDate'] as String?;

Map<String, dynamic> _$UnitToJson(Unit instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rentCollectionDate': instance.rentCollectionDate,
      'rent': instance.rent,
      'electricityAccount': instance.electricityAccount,
      'waterAccount': instance.waterAccount,
      'address': instance.address,
      'space': instance.space,
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
      'enterpriseId': instance.enterpriseId,
      'tenant': instance.tenant,
      'property': instance.property,
    };

Tenant _$TenantFromJson(Map<String, dynamic> json) => Tenant(
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
      language: json['language'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      enterpriseId: json['enterpriseId'] as int?,
    );

Map<String, dynamic> _$TenantToJson(Tenant instance) => <String, dynamic>{
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
      'language': instance.language,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'enterpriseId': instance.enterpriseId,
    };
