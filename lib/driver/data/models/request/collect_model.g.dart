// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collect_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectModelImpl _$$CollectModelImplFromJson(Map<String, dynamic> json) =>
    _$CollectModelImpl(
      id: json['ZF1_ID'] as String,
      data: json['ZF1_DATA'] as String,
      harvest: json['ZF1_SAFRA'] as String,
      farm: json['ZF1_FAZ'] as String,
      field: json['ZF1_TALHAO'] as String,
      productCode: json['ZF1_COD'] as String,
      varietyCode: json['ZF1_CODVAR'] as String,
      order: json['ZF1_ORDCOL'] as String? ?? '',
      vehiclePlate: json['ZF1_PLACA'] as String,
      shippingCompany: json['ZF1_TRANSP'] as String,
      driverCode: json['ZF1_CODMOT'] as String,
      subsidiaryOrigin: json['ZF1_FILORI'] as String,
      entityDescription: json['ZF1_ENTDES'] as String,
      storeDescription: json['ZF1_LOJDES'] as String,
      quantity: json['ZF1_QTDE'] as int,
    );

Map<String, dynamic> _$$CollectModelImplToJson(_$CollectModelImpl instance) =>
    <String, dynamic>{
      'ZF1_ID': instance.id,
      'ZF1_DATA': instance.data,
      'ZF1_SAFRA': instance.harvest,
      'ZF1_FAZ': instance.farm,
      'ZF1_TALHAO': instance.field,
      'ZF1_COD': instance.productCode,
      'ZF1_CODVAR': instance.varietyCode,
      'ZF1_ORDCOL': instance.order,
      'ZF1_PLACA': instance.vehiclePlate,
      'ZF1_TRANSP': instance.shippingCompany,
      'ZF1_CODMOT': instance.driverCode,
      'ZF1_FILORI': instance.subsidiaryOrigin,
      'ZF1_ENTDES': instance.entityDescription,
      'ZF1_LOJDES': instance.storeDescription,
      'ZF1_QTDE': instance.quantity,
    };
