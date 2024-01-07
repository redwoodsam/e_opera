// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farm_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FarmModelImpl _$$FarmModelImplFromJson(Map<String, dynamic> json) =>
    _$FarmModelImpl(
      farmCode: json['codFazenda'] as String,
      farmName: json['nomeFazenda'] as String,
      branchCode: json['codFilial'] as String,
      branchName: json['nomeFilial'] as String,
    );

Map<String, dynamic> _$$FarmModelImplToJson(_$FarmModelImpl instance) =>
    <String, dynamic>{
      'codFazenda': instance.farmCode,
      'nomeFazenda': instance.farmName,
      'codFilial': instance.branchCode,
      'nomeFilial': instance.branchName,
    };
