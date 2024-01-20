// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FieldImpl _$$FieldImplFromJson(Map<String, dynamic> json) => _$FieldImpl(
      fieldDescription: json['desTalhao'] as String,
      fieldCode: json['codTalhao'] as String,
      harvestField: json['safraTalhao'] as String,
      farmField: json['fazendaTalhao'] as String,
      productField: json['produtoTalhao'] as String,
      productDescription: json['desProduto'] as String,
      varietyCode: json['codVariedade'] as String,
      varietyDescription: json['desVariedade'] as String,
    );

Map<String, dynamic> _$$FieldImplToJson(_$FieldImpl instance) =>
    <String, dynamic>{
      'desTalhao': instance.fieldDescription,
      'codTalhao': instance.fieldCode,
      'safraTalhao': instance.harvestField,
      'fazendaTalhao': instance.farmField,
      'produtoTalhao': instance.productField,
      'desProduto': instance.productDescription,
      'codVariedade': instance.varietyCode,
      'desVariedade': instance.varietyDescription,
    };
