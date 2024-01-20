import 'package:freezed_annotation/freezed_annotation.dart';

part 'harvest.freezed.dart';

@freezed

/// Representation of a Harvest
sealed class Harvest with _$Harvest {
  const Harvest._();

  factory Harvest({
    @Default('') String description,
    @Default('') String code,
  }) = _Harvest;
}
