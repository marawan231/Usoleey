// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickets_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketsModel _$TicketsModelFromJson(Map<String, dynamic> json) => TicketsModel(
      data: json['data'] == null
          ? null
          : TicketsModelData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$TicketsModelToJson(TicketsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'message': instance.message,
    };

TicketsModelData _$TicketsModelDataFromJson(Map<String, dynamic> json) =>
    TicketsModelData(
      tickets: (json['tickets'] as List<dynamic>?)
          ?.map((e) => Ticket.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TicketsModelDataToJson(TicketsModelData instance) =>
    <String, dynamic>{
      'tickets': instance.tickets?.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination?.toJson(),
    };

Ticket _$TicketFromJson(Map<String, dynamic> json) => Ticket(
      id: json['id'] as int?,
      description: json['description'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      enterpriseId: json['enterpriseId'] as String?,
      unitId: json['unitId'] as int?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      unit: json['unit'] == null
          ? null
          : Unit.fromJson(json['unit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TicketToJson(Ticket instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'status': instance.status,
      'type': instance.type,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'enterpriseId': instance.enterpriseId,
      'unitId': instance.unitId,
      'images': instance.images,
      'unit': instance.unit?.toJson(),
    };

Unit _$UnitFromJson(Map<String, dynamic> json) => Unit(
      id: json['id'] as int?,
      name: json['name'] as String?,
      rent: json['rent'] as int?,
      rentCollectionDate: json['rentCollectionDate'] as String?,
      electricityAccount: json['electricityAccount'] as String?,
      waterAccount: json['waterAccount'] as String?,
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
      ownerId: json['ownerId'] as int?,
      propertyId: json['propertyId'] as int?,
      enterpriseId: json['enterpriseId'] as String?,
      tenant: json['tenant'] == null
          ? null
          : Tenant.fromJson(json['tenant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UnitToJson(Unit instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rent': instance.rent,
      'rentCollectionDate': instance.rentCollectionDate,
      'electricityAccount': instance.electricityAccount,
      'waterAccount': instance.waterAccount,
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
      'ownerId': instance.ownerId,
      'propertyId': instance.propertyId,
      'enterpriseId': instance.enterpriseId,
      'tenant': instance.tenant?.toJson(),
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
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      enterpriseId: json['enterpriseId'] as String?,
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
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'enterpriseId': instance.enterpriseId,
    };

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'count': instance.count,
    };
