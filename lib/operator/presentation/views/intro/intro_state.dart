import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/core.dart';

part 'intro_state.freezed.dart';

@freezed

/// State of Intro
sealed class IntroState extends ViewModelState with _$IntroState {
  /// The initial [IntroState] state
  factory IntroState.initial() = InitialIntro;

  /// The loading [IntroState] state
  factory IntroState.error() = ErrorIntro;

  /// The loading [IntroState] state
  factory IntroState.loading() = LoadingIntro;

  /// The user [IntroState] state
  factory IntroState.success() = SuccessIntro;
}
