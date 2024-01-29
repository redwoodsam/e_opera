// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShippingCompanyModelImpl _$$ShippingCompanyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ShippingCompanyModelImpl(
      shippingCompanyCode: json['codTransportadora'] as String,
      shippingCompanyReducedName: json['nreduzTransportadora'] as String,
      shippingCompanyName: json['nomeTransportadora'] as String,
    );

Map<String, dynamic> _$$ShippingCompanyModelImplToJson(
        _$ShippingCompanyModelImpl instance) =>
    <String, dynamic>{
      'codTransportadora': instance.shippingCompanyCode,
      'nreduzTransportadora': instance.shippingCompanyReducedName,
      'nomeTransportadora': instance.shippingCompanyName,
    };
