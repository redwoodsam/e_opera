// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginParamsModelImpl _$$LoginParamsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginParamsModelImpl(
      user: json['usuario'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$LoginParamsModelImplToJson(
        _$LoginParamsModelImpl instance) =>
    <String, dynamic>{
      'usuario': instance.user,
      'password': instance.password,
    };
