// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverModelImpl _$$DriverModelImplFromJson(Map<String, dynamic> json) =>
    _$DriverModelImpl(
      driverCode: json['codMotorista'] as String,
      driverName: json['nomeMotorista'] as String,
      driverReducedName: json['nreduzMotorista'] as String,
      driverCpf: json['cpfMotorista'] as String,
    );

Map<String, dynamic> _$$DriverModelImplToJson(_$DriverModelImpl instance) =>
    <String, dynamic>{
      'codMotorista': instance.driverCode,
      'nomeMotorista': instance.driverName,
      'nreduzMotorista': instance.driverReducedName,
      'cpfMotorista': instance.driverCpf,
    };
