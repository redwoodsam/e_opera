// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleModelImpl _$$VehicleModelImplFromJson(Map<String, dynamic> json) =>
    _$VehicleModelImpl(
      vehicleCode: json['codVeiculo'] as String,
      driverVehicle: json['motoristaVeiculo'] as String,
      vehicleName: json['nomeVeiculo'] as String,
      vehiclePlate: json['placaVeiculo'] as String,
    );

Map<String, dynamic> _$$VehicleModelImplToJson(_$VehicleModelImpl instance) =>
    <String, dynamic>{
      'codVeiculo': instance.vehicleCode,
      'motoristaVeiculo': instance.driverVehicle,
      'nomeVeiculo': instance.vehicleName,
      'placaVeiculo': instance.vehiclePlate,
    };
