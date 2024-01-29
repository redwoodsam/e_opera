// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variety_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VarietyModelImpl _$$VarietyModelImplFromJson(Map<String, dynamic> json) =>
    _$VarietyModelImpl(
      varietyCode: json['codVariedade'] as String,
      varietyDescription: json['desVariedade'] as String,
      productCode: json['codProduto'] as String,
      productDescription: json['desProduto'] as String,
    );

Map<String, dynamic> _$$VarietyModelImplToJson(_$VarietyModelImpl instance) =>
    <String, dynamic>{
      'codVariedade': instance.varietyCode,
      'desVariedade': instance.varietyDescription,
      'codProduto': instance.productCode,
      'desProduto': instance.productDescription,
    };
