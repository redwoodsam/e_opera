import 'package:freezed_annotation/freezed_annotation.dart';

part 'localization_params.freezed.dart';

@freezed

/// Localization of the operator
sealed class LocalizationParams with _$LocalizationParams {
  const LocalizationParams._();

  factory LocalizationParams({
    @Default('') String farm,
    @Default('') String harvest,
    @Default('') String field,
  }) = _LocalizationParams;
}
