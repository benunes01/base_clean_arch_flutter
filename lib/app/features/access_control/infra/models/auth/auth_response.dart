import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    required TokenJWT jwt,
    required RefreshToken refreshToken,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

@JsonSerializable()
class TokenJWT {
  String? token;
  String? expiresIn;

  TokenJWT({
    required this.token,
    required this.expiresIn,
  });

  factory TokenJWT.fromJson(Map<String, dynamic> json) =>
      _$TokenJWTFromJson(json);

  Map<String, dynamic> toJson() => _$TokenJWTToJson(this);
}

@JsonSerializable()
class RefreshToken {
  @JsonKey(name: "_id")
  String? id;
  String? expiresIn;
  String? userId;

  RefreshToken({
    required this.id,
    required this.expiresIn,
    required this.userId,
  });

  factory RefreshToken.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenFromJson(json);

  Map<String, dynamic> toJson() => _$RefreshTokenToJson(this);
}