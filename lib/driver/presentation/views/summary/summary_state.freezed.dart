// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SummaryState {
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
    required TResult Function(SummaryInitial value) initial,
    required TResult Function(SummaryError value) error,
    required TResult Function(SummaryLoading value) loading,
    required TResult Function(SummarySuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SummaryInitial value)? initial,
    TResult? Function(SummaryError value)? error,
    TResult? Function(SummaryLoading value)? loading,
    TResult? Function(SummarySuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SummaryInitial value)? initial,
    TResult Function(SummaryError value)? error,
    TResult Function(SummaryLoading value)? loading,
    TResult Function(SummarySuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryStateCopyWith<$Res> {
  factory $SummaryStateCopyWith(
          SummaryState value, $Res Function(SummaryState) then) =
      _$SummaryStateCopyWithImpl<$Res, SummaryState>;
}

/// @nodoc
class _$SummaryStateCopyWithImpl<$Res, $Val extends SummaryState>
    implements $SummaryStateCopyWith<$Res> {
  _$SummaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SummaryInitialImplCopyWith<$Res> {
  factory _$$SummaryInitialImplCopyWith(_$SummaryInitialImpl value,
          $Res Function(_$SummaryInitialImpl) then) =
      __$$SummaryInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SummaryInitialImplCopyWithImpl<$Res>
    extends _$SummaryStateCopyWithImpl<$Res, _$SummaryInitialImpl>
    implements _$$SummaryInitialImplCopyWith<$Res> {
  __$$SummaryInitialImplCopyWithImpl(
      _$SummaryInitialImpl _value, $Res Function(_$SummaryInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SummaryInitialImpl implements SummaryInitial {
  _$SummaryInitialImpl();

  @override
  String toString() {
    return 'SummaryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SummaryInitialImpl);
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
    required TResult Function(SummaryInitial value) initial,
    required TResult Function(SummaryError value) error,
    required TResult Function(SummaryLoading value) loading,
    required TResult Function(SummarySuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SummaryInitial value)? initial,
    TResult? Function(SummaryError value)? error,
    TResult? Function(SummaryLoading value)? loading,
    TResult? Function(SummarySuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SummaryInitial value)? initial,
    TResult Function(SummaryError value)? error,
    TResult Function(SummaryLoading value)? loading,
    TResult Function(SummarySuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SummaryInitial implements SummaryState {
  factory SummaryInitial() = _$SummaryInitialImpl;
}

/// @nodoc
abstract class _$$SummaryErrorImplCopyWith<$Res> {
  factory _$$SummaryErrorImplCopyWith(
          _$SummaryErrorImpl value, $Res Function(_$SummaryErrorImpl) then) =
      __$$SummaryErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SummaryErrorImplCopyWithImpl<$Res>
    extends _$SummaryStateCopyWithImpl<$Res, _$SummaryErrorImpl>
    implements _$$SummaryErrorImplCopyWith<$Res> {
  __$$SummaryErrorImplCopyWithImpl(
      _$SummaryErrorImpl _value, $Res Function(_$SummaryErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SummaryErrorImpl implements SummaryError {
  _$SummaryErrorImpl();

  @override
  String toString() {
    return 'SummaryState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SummaryErrorImpl);
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
    required TResult Function(SummaryInitial value) initial,
    required TResult Function(SummaryError value) error,
    required TResult Function(SummaryLoading value) loading,
    required TResult Function(SummarySuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SummaryInitial value)? initial,
    TResult? Function(SummaryError value)? error,
    TResult? Function(SummaryLoading value)? loading,
    TResult? Function(SummarySuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SummaryInitial value)? initial,
    TResult Function(SummaryError value)? error,
    TResult Function(SummaryLoading value)? loading,
    TResult Function(SummarySuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SummaryError implements SummaryState {
  factory SummaryError() = _$SummaryErrorImpl;
}

/// @nodoc
abstract class _$$SummaryLoadingImplCopyWith<$Res> {
  factory _$$SummaryLoadingImplCopyWith(_$SummaryLoadingImpl value,
          $Res Function(_$SummaryLoadingImpl) then) =
      __$$SummaryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SummaryLoadingImplCopyWithImpl<$Res>
    extends _$SummaryStateCopyWithImpl<$Res, _$SummaryLoadingImpl>
    implements _$$SummaryLoadingImplCopyWith<$Res> {
  __$$SummaryLoadingImplCopyWithImpl(
      _$SummaryLoadingImpl _value, $Res Function(_$SummaryLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SummaryLoadingImpl implements SummaryLoading {
  _$SummaryLoadingImpl();

  @override
  String toString() {
    return 'SummaryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SummaryLoadingImpl);
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
    required TResult Function(SummaryInitial value) initial,
    required TResult Function(SummaryError value) error,
    required TResult Function(SummaryLoading value) loading,
    required TResult Function(SummarySuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SummaryInitial value)? initial,
    TResult? Function(SummaryError value)? error,
    TResult? Function(SummaryLoading value)? loading,
    TResult? Function(SummarySuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SummaryInitial value)? initial,
    TResult Function(SummaryError value)? error,
    TResult Function(SummaryLoading value)? loading,
    TResult Function(SummarySuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SummaryLoading implements SummaryState {
  factory SummaryLoading() = _$SummaryLoadingImpl;
}

/// @nodoc
abstract class _$$SummarySuccessImplCopyWith<$Res> {
  factory _$$SummarySuccessImplCopyWith(_$SummarySuccessImpl value,
          $Res Function(_$SummarySuccessImpl) then) =
      __$$SummarySuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SummarySuccessImplCopyWithImpl<$Res>
    extends _$SummaryStateCopyWithImpl<$Res, _$SummarySuccessImpl>
    implements _$$SummarySuccessImplCopyWith<$Res> {
  __$$SummarySuccessImplCopyWithImpl(
      _$SummarySuccessImpl _value, $Res Function(_$SummarySuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SummarySuccessImpl implements SummarySuccess {
  _$SummarySuccessImpl();

  @override
  String toString() {
    return 'SummaryState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SummarySuccessImpl);
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
    required TResult Function(SummaryInitial value) initial,
    required TResult Function(SummaryError value) error,
    required TResult Function(SummaryLoading value) loading,
    required TResult Function(SummarySuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SummaryInitial value)? initial,
    TResult? Function(SummaryError value)? error,
    TResult? Function(SummaryLoading value)? loading,
    TResult? Function(SummarySuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SummaryInitial value)? initial,
    TResult Function(SummaryError value)? error,
    TResult Function(SummaryLoading value)? loading,
    TResult Function(SummarySuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SummarySuccess implements SummaryState {
  factory SummarySuccess() = _$SummarySuccessImpl;
}
