// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenJWT _$TokenJWTFromJson(Map<String, dynamic> json) => TokenJWT(
      token: json['token'] as String?,
      expiresIn: json['expiresIn'] as String?,
    );

Map<String, dynamic> _$TokenJWTToJson(TokenJWT instance) => <String, dynamic>{
      'token': instance.token,
      'expiresIn': instance.expiresIn,
    };

RefreshToken _$RefreshTokenFromJson(Map<String, dynamic> json) => RefreshToken(
      id: json['_id'] as String?,
      expiresIn: json['expiresIn'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$RefreshTokenToJson(RefreshToken instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'expiresIn': instance.expiresIn,
      'userId': instance.userId,
    };

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    _$AuthResponseImpl(
      jwt: TokenJWT.fromJson(json['jwt'] as Map<String, dynamic>),
      refreshToken:
          RefreshToken.fromJson(json['refreshToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'refreshToken': instance.refreshToken,
    };
