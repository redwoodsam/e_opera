// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/vehicle.dart';

part 'vehicle_model.freezed.dart';
part 'vehicle_model.g.dart';

///
/// Model params to farm
///
@freezed
class VehicleModel with _$VehicleModel {
  const VehicleModel._();

  ///
  /// [VehicleModel] default constructor
  ///
  factory VehicleModel({
    @JsonKey(name: 'codVeiculo') required String vehicleCode,
    @JsonKey(name: 'motoristaVeiculo') required String driverVehicle,
    @JsonKey(name: 'nomeVeiculo') required String vehicleName,
    @JsonKey(name: 'placaVeiculo') required String vehiclePlate,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelFromJson(json);

  factory VehicleModel.fromEntity(
    Vehicle entity,
  ) {
    return VehicleModel(
      vehicleCode: entity.vehicleCode,
      driverVehicle: entity.driverVehicle,
      vehicleName: entity.vehicleName,
      vehiclePlate: entity.vehiclePlate,
    );
  }

  ///Creates a [Vehicle] from a [VehicleModel].
  Vehicle toEntity() {
    return Vehicle(
      vehicleCode: vehicleCode as String,
      vehicleName: vehicleName as String,
      driverVehicle: driverVehicle as String,
      vehiclePlate: vehiclePlate as String,
    );
  }
}
