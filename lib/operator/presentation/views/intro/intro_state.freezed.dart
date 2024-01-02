// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intro_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IntroState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialIntro value) initial,
    required TResult Function(ErrorIntro value) error,
    required TResult Function(LoadingIntro value) loading,
    required TResult Function(SuccessIntro value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialIntro value)? initial,
    TResult? Function(ErrorIntro value)? error,
    TResult? Function(LoadingIntro value)? loading,
    TResult? Function(SuccessIntro value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialIntro value)? initial,
    TResult Function(ErrorIntro value)? error,
    TResult Function(LoadingIntro value)? loading,
    TResult Function(SuccessIntro value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroStateCopyWith<$Res> {
  factory $IntroStateCopyWith(
          IntroState value, $Res Function(IntroState) then) =
      _$IntroStateCopyWithImpl<$Res, IntroState>;
}

/// @nodoc
class _$IntroStateCopyWithImpl<$Res, $Val extends IntroState>
    implements $IntroStateCopyWith<$Res> {
  _$IntroStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialIntroImplCopyWith<$Res> {
  factory _$$InitialIntroImplCopyWith(
          _$InitialIntroImpl value, $Res Function(_$InitialIntroImpl) then) =
      __$$InitialIntroImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialIntroImplCopyWithImpl<$Res>
    extends _$IntroStateCopyWithImpl<$Res, _$InitialIntroImpl>
    implements _$$InitialIntroImplCopyWith<$Res> {
  __$$InitialIntroImplCopyWithImpl(
      _$InitialIntroImpl _value, $Res Function(_$InitialIntroImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialIntroImpl implements InitialIntro {
  _$InitialIntroImpl();

  @override
  String toString() {
    return 'IntroState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialIntroImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialIntro value) initial,
    required TResult Function(ErrorIntro value) error,
    required TResult Function(LoadingIntro value) loading,
    required TResult Function(SuccessIntro value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialIntro value)? initial,
    TResult? Function(ErrorIntro value)? error,
    TResult? Function(LoadingIntro value)? loading,
    TResult? Function(SuccessIntro value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialIntro value)? initial,
    TResult Function(ErrorIntro value)? error,
    TResult Function(LoadingIntro value)? loading,
    TResult Function(SuccessIntro value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialIntro implements IntroState {
  factory InitialIntro() = _$InitialIntroImpl;
}

/// @nodoc
abstract class _$$ErrorIntroImplCopyWith<$Res> {
  factory _$$ErrorIntroImplCopyWith(
          _$ErrorIntroImpl value, $Res Function(_$ErrorIntroImpl) then) =
      __$$ErrorIntroImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorIntroImplCopyWithImpl<$Res>
    extends _$IntroStateCopyWithImpl<$Res, _$ErrorIntroImpl>
    implements _$$ErrorIntroImplCopyWith<$Res> {
  __$$ErrorIntroImplCopyWithImpl(
      _$ErrorIntroImpl _value, $Res Function(_$ErrorIntroImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorIntroImpl implements ErrorIntro {
  _$ErrorIntroImpl();

  @override
  String toString() {
    return 'IntroState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorIntroImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialIntro value) initial,
    required TResult Function(ErrorIntro value) error,
    required TResult Function(LoadingIntro value) loading,
    required TResult Function(SuccessIntro value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialIntro value)? initial,
    TResult? Function(ErrorIntro value)? error,
    TResult? Function(LoadingIntro value)? loading,
    TResult? Function(SuccessIntro value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialIntro value)? initial,
    TResult Function(ErrorIntro value)? error,
    TResult Function(LoadingIntro value)? loading,
    TResult Function(SuccessIntro value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorIntro implements IntroState {
  factory ErrorIntro() = _$ErrorIntroImpl;
}

/// @nodoc
abstract class _$$LoadingIntroImplCopyWith<$Res> {
  factory _$$LoadingIntroImplCopyWith(
          _$LoadingIntroImpl value, $Res Function(_$LoadingIntroImpl) then) =
      __$$LoadingIntroImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingIntroImplCopyWithImpl<$Res>
    extends _$IntroStateCopyWithImpl<$Res, _$LoadingIntroImpl>
    implements _$$LoadingIntroImplCopyWith<$Res> {
  __$$LoadingIntroImplCopyWithImpl(
      _$LoadingIntroImpl _value, $Res Function(_$LoadingIntroImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingIntroImpl implements LoadingIntro {
  _$LoadingIntroImpl();

  @override
  String toString() {
    return 'IntroState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingIntroImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialIntro value) initial,
    required TResult Function(ErrorIntro value) error,
    required TResult Function(LoadingIntro value) loading,
    required TResult Function(SuccessIntro value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialIntro value)? initial,
    TResult? Function(ErrorIntro value)? error,
    TResult? Function(LoadingIntro value)? loading,
    TResult? Function(SuccessIntro value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialIntro value)? initial,
    TResult Function(ErrorIntro value)? error,
    TResult Function(LoadingIntro value)? loading,
    TResult Function(SuccessIntro value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingIntro implements IntroState {
  factory LoadingIntro() = _$LoadingIntroImpl;
}

/// @nodoc
abstract class _$$SuccessIntroImplCopyWith<$Res> {
  factory _$$SuccessIntroImplCopyWith(
          _$SuccessIntroImpl value, $Res Function(_$SuccessIntroImpl) then) =
      __$$SuccessIntroImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessIntroImplCopyWithImpl<$Res>
    extends _$IntroStateCopyWithImpl<$Res, _$SuccessIntroImpl>
    implements _$$SuccessIntroImplCopyWith<$Res> {
  __$$SuccessIntroImplCopyWithImpl(
      _$SuccessIntroImpl _value, $Res Function(_$SuccessIntroImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessIntroImpl implements SuccessIntro {
  _$SuccessIntroImpl();

  @override
  String toString() {
    return 'IntroState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessIntroImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialIntro value) initial,
    required TResult Function(ErrorIntro value) error,
    required TResult Function(LoadingIntro value) loading,
    required TResult Function(SuccessIntro value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialIntro value)? initial,
    TResult? Function(ErrorIntro value)? error,
    TResult? Function(LoadingIntro value)? loading,
    TResult? Function(SuccessIntro value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialIntro value)? initial,
    TResult Function(ErrorIntro value)? error,
    TResult Function(LoadingIntro value)? loading,
    TResult Function(SuccessIntro value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessIntro implements IntroState {
  factory SuccessIntro() = _$SuccessIntroImpl;
}
