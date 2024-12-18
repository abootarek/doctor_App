import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

// retrofit
@JsonSerializable()
class LoginResponse {
  String? message;
  bool? status;
  @JsonKey(name: 'data')
  UserData? userData;
  int? code;
  LoginResponse({
    this.message,
    this.status,
    this.userData,
    this.code,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String token;
  @JsonKey(name: 'username')
  String userName;
  UserData({
    required this.token,
    required this.userName,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
