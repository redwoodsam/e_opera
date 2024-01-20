import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/core.dart';

part 'home_driver_state.freezed.dart';

@freezed

/// State ofHome
sealed class DriverHomeState extends ViewModelState with _$DriverHomeState {
  /// The initial [DriverHomeState] state
  factory DriverHomeState.initial() = DriverInitialHome;

  /// The loading [DriverHomeState] state
  factory DriverHomeState.error() = DriverErrorHome;

  /// The loading [DriverHomeState] state
  factory DriverHomeState.loading() = DriverLoadingHome;

  /// The user [DriverHomeState] state
  factory DriverHomeState.success() = DriverSuccessHome;
}
