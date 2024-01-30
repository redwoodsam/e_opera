import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/core.dart';
import '../../../domain/entities/collect.dart';

part 'summary_driver_state.freezed.dart';

@freezed
sealed class SummaryDriverState extends ViewModelState
    with _$SummaryDriverState {
  factory SummaryDriverState.initial() = SummaryDriverInitial;

  factory SummaryDriverState.error() = SummaryDriverError;

  factory SummaryDriverState.loading() = SummaryDriverLoading;

  factory SummaryDriverState.loaded({
    Collect? collectedData,
  }) = LoadedSummaryDriverState;

  factory SummaryDriverState.success() = SummaryDriverSuccess;
}
