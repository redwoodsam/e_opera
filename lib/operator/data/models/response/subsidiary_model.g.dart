// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subsidiary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubsidiaryModelImpl _$$SubsidiaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubsidiaryModelImpl(
      subsidiaryCode: json['codFilial'] as String,
      subsidiaryName: json['nomeFilial'] as String,
      companyName: json['empresaFilial'] as String?,
    );

Map<String, dynamic> _$$SubsidiaryModelImplToJson(
        _$SubsidiaryModelImpl instance) =>
    <String, dynamic>{
      'codFilial': instance.subsidiaryCode,
      'nomeFilial': instance.subsidiaryName,
      'empresaFilial': instance.companyName,
    };
