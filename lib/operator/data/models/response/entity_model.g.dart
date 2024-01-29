// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EentityModelImpl _$$EentityModelImplFromJson(Map<String, dynamic> json) =>
    _$EentityModelImpl(
      entityCode: json['codEntidade'] as String,
      entityName: json['nomeEntidade'] as String,
      entityStore: json['lojEntidade'] as String?,
      entityStoreName: json['nomeLojEntidade'] as String?,
    );

Map<String, dynamic> _$$EentityModelImplToJson(_$EentityModelImpl instance) =>
    <String, dynamic>{
      'codEntidade': instance.entityCode,
      'nomeEntidade': instance.entityName,
      'lojEntidade': instance.entityStore,
      'nomeLojEntidade': instance.entityStoreName,
    };
