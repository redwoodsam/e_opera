// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/driver.dart';

part 'driver_model.freezed.dart';
part 'driver_model.g.dart';

///
/// Model params to farm
///
@freezed
class DriverModel with _$DriverModel {
  const DriverModel._();

  ///
  /// [DriverModel] default constructor
  ///
  const factory DriverModel({
    @JsonKey(name: 'codMotorista') required String driverCode,
    @JsonKey(name: 'nomeMotorista') required String driverName,
    @JsonKey(name: 'nreduzMotorista') required String driverReducedName,
    @JsonKey(name: 'cpfMotorista') required String driverCpf,
  }) = _DriverModel;

  factory DriverModel.fromJson(Map<String, dynamic> json) =>
      _$DriverModelFromJson(json);

  factory DriverModel.fromEntity(
    Driver entity,
  ) {
    return DriverModel(
      driverCode: entity.driverCode,
      driverName: entity.driverName,
      driverReducedName: entity.driverReducedName,
      driverCpf: entity.driverCpf,
    );
  }

  ///Creates a [Driver] from a [DriverModel].
  Driver toEntity() {
    return Driver(
      driverCode: driverCode,
      driverName: driverName,
      driverReducedName: driverReducedName,
      driverCpf: driverCpf,
    );
  }
}
