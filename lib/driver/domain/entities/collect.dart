import 'package:freezed_annotation/freezed_annotation.dart';

part 'collect.freezed.dart';

@freezed

/// Representation of aCollect
sealed class Collect with _$Collect {
  const Collect._();

  factory Collect({
    @Default('') String date,
    @Default('') String area,
    @Default('') String responsible,
    @Default('') String productCode,
    @Default('') String productDescription,
    @Default('') String productVariety,
    @Default('') String productCollectedAmount,
    @Default('') String productUnit,
    @Default('') String driverName,
    @Default('') String driverCPF,
    @Default('') String truckPlate,
    @Default('') String carrier,
    @Default('') String destination,
    @Default('') String observation,
  }) = _Collect;
}
