// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specializitions_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializitionsResponseModel _$SpecializitionsResponseModelFromJson(
        Map<String, dynamic> json) =>
    SpecializitionsResponseModel(
      message: json['message'] as String?,
      specializitionsDataList: (json['data'] as List<dynamic>?)
          ?.map((e) => SpecializitionsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializitionsResponseModelToJson(
        SpecializitionsResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.specializitionsDataList,
    };

SpecializitionsData _$SpecializitionsDataFromJson(Map<String, dynamic> json) =>
    SpecializitionsData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      doctorsList: (json['doctors'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Doctors.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializitionsDataToJson(
        SpecializitionsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'doctors': instance.doctorsList,
    };

Doctors _$DoctorsFromJson(Map<String, dynamic> json) => Doctors(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      gender: json['gender'] as String?,
      degree: json['degree'] as String?,
      price: json['appoint_price'] as String?,
    );

Map<String, dynamic> _$DoctorsToJson(Doctors instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
      'degree': instance.degree,
      'appoint_price': instance.price,
    };
