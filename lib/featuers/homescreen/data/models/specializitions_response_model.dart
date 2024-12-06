// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'specializitions_response_model.g.dart';

@JsonSerializable()
class SpecializitionsResponseModel {
  String? message;
  @JsonKey(name: 'data')
  List<SpecializitionsData?>? specializitionsDataList;
  SpecializitionsResponseModel({
    this.message,
    this.specializitionsDataList,
  });

  factory SpecializitionsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializitionsResponseModelFromJson(json);
}

@JsonSerializable()
class SpecializitionsData {
  // @JsonKey(name: 'id')
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<Doctors?>? doctorsList;
  SpecializitionsData({
    this.id,
    this.name,
    this.doctorsList,
  });
  factory SpecializitionsData.fromJson(Map<String, dynamic> json) =>
      _$SpecializitionsDataFromJson(json);
}

@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? gender;
  String? degree;
  @JsonKey(name: 'appoint_price')
  String? price;
  Doctors({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.gender,
    this.degree,
    this.price,
  });
  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}
