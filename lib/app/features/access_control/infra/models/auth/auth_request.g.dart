// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthRequestImpl _$$AuthRequestImplFromJson(Map<String, dynamic> json) =>
    _$AuthRequestImpl(
      taxId: json['taxId'] as String,
      password: json['password'] as String,
      tokenFCM: json['tokenFCM'] as String,
    );

Map<String, dynamic> _$$AuthRequestImplToJson(_$AuthRequestImpl instance) =>
    <String, dynamic>{
      'taxId': instance.taxId,
      'password': instance.password,
      'tokenFCM': instance.tokenFCM,
    };
