// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntityModelImpl _$$EntityModelImplFromJson(Map<String, dynamic> json) =>
    _$EntityModelImpl(
      entityCode: json['codEntidade'] as String,
      entityName: json['nomeEntidade'] as String,
      entityStore: json['lojEntidade'] as String?,
      entityStoreName: json['nomeLojEntidade'] as String?,
    );

Map<String, dynamic> _$$EntityModelImplToJson(_$EntityModelImpl instance) =>
    <String, dynamic>{
      'codEntidade': instance.entityCode,
      'nomeEntidade': instance.entityName,
      'lojEntidade': instance.entityStore,
      'nomeLojEntidade': instance.entityStoreName,
    };
