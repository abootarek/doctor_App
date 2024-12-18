
import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable()
class SignupResponse {
  String? message;
  bool? status;
  int? code;
  @JsonKey(name: 'data')
  UserData? userData;
  SignupResponse({
    this.message,
    this.status,
    this.code,
    this.userData,
  });

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  String? username;
  UserData({
    this.token,
    this.username,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
