import 'package:freezed_annotation/freezed_annotation.dart';

part 'farm.freezed.dart';

@freezed

/// Representation of a Farm
sealed class Farm with _$Farm {
  const Farm._();

  factory Farm({
    @Default('') String farmCode,
    @Default('') String farmName,
    @Default('') String branchCode,
    @Default('') String branchName,
  }) = _Farm;
}
