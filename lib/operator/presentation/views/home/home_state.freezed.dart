// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(LocationParams? locationParams) loaded,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function(LocationParams? locationParams)? loaded,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(LocationParams? locationParams)? loaded,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialHome value) initial,
    required TResult Function(ErrorHome value) error,
    required TResult Function(LoadingHome value) loading,
    required TResult Function(LoadedHome value) loaded,
    required TResult Function(SuccessHome value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialHome value)? initial,
    TResult? Function(ErrorHome value)? error,
    TResult? Function(LoadingHome value)? loading,
    TResult? Function(LoadedHome value)? loaded,
    TResult? Function(SuccessHome value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHome value)? initial,
    TResult Function(ErrorHome value)? error,
    TResult Function(LoadingHome value)? loading,
    TResult Function(LoadedHome value)? loaded,
    TResult Function(SuccessHome value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialHomeImplCopyWith<$Res> {
  factory _$$InitialHomeImplCopyWith(
          _$InitialHomeImpl value, $Res Function(_$InitialHomeImpl) then) =
      __$$InitialHomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialHomeImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialHomeImpl>
    implements _$$InitialHomeImplCopyWith<$Res> {
  __$$InitialHomeImplCopyWithImpl(
      _$InitialHomeImpl _value, $Res Function(_$InitialHomeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialHomeImpl implements InitialHome {
  _$InitialHomeImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialHomeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(LocationParams? locationParams) loaded,
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
    TResult? Function(LocationParams? locationParams)? loaded,
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
    TResult Function(LocationParams? locationParams)? loaded,
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
    required TResult Function(InitialHome value) initial,
    required TResult Function(ErrorHome value) error,
    required TResult Function(LoadingHome value) loading,
    required TResult Function(LoadedHome value) loaded,
    required TResult Function(SuccessHome value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialHome value)? initial,
    TResult? Function(ErrorHome value)? error,
    TResult? Function(LoadingHome value)? loading,
    TResult? Function(LoadedHome value)? loaded,
    TResult? Function(SuccessHome value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHome value)? initial,
    TResult Function(ErrorHome value)? error,
    TResult Function(LoadingHome value)? loading,
    TResult Function(LoadedHome value)? loaded,
    TResult Function(SuccessHome value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialHome implements HomeState {
  factory InitialHome() = _$InitialHomeImpl;
}

/// @nodoc
abstract class _$$ErrorHomeImplCopyWith<$Res> {
  factory _$$ErrorHomeImplCopyWith(
          _$ErrorHomeImpl value, $Res Function(_$ErrorHomeImpl) then) =
      __$$ErrorHomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorHomeImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ErrorHomeImpl>
    implements _$$ErrorHomeImplCopyWith<$Res> {
  __$$ErrorHomeImplCopyWithImpl(
      _$ErrorHomeImpl _value, $Res Function(_$ErrorHomeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorHomeImpl implements ErrorHome {
  _$ErrorHomeImpl();

  @override
  String toString() {
    return 'HomeState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorHomeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(LocationParams? locationParams) loaded,
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
    TResult? Function(LocationParams? locationParams)? loaded,
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
    TResult Function(LocationParams? locationParams)? loaded,
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
    required TResult Function(InitialHome value) initial,
    required TResult Function(ErrorHome value) error,
    required TResult Function(LoadingHome value) loading,
    required TResult Function(LoadedHome value) loaded,
    required TResult Function(SuccessHome value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialHome value)? initial,
    TResult? Function(ErrorHome value)? error,
    TResult? Function(LoadingHome value)? loading,
    TResult? Function(LoadedHome value)? loaded,
    TResult? Function(SuccessHome value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHome value)? initial,
    TResult Function(ErrorHome value)? error,
    TResult Function(LoadingHome value)? loading,
    TResult Function(LoadedHome value)? loaded,
    TResult Function(SuccessHome value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorHome implements HomeState {
  factory ErrorHome() = _$ErrorHomeImpl;
}

/// @nodoc
abstract class _$$LoadingHomeImplCopyWith<$Res> {
  factory _$$LoadingHomeImplCopyWith(
          _$LoadingHomeImpl value, $Res Function(_$LoadingHomeImpl) then) =
      __$$LoadingHomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingHomeImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingHomeImpl>
    implements _$$LoadingHomeImplCopyWith<$Res> {
  __$$LoadingHomeImplCopyWithImpl(
      _$LoadingHomeImpl _value, $Res Function(_$LoadingHomeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingHomeImpl implements LoadingHome {
  _$LoadingHomeImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingHomeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(LocationParams? locationParams) loaded,
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
    TResult? Function(LocationParams? locationParams)? loaded,
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
    TResult Function(LocationParams? locationParams)? loaded,
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
    required TResult Function(InitialHome value) initial,
    required TResult Function(ErrorHome value) error,
    required TResult Function(LoadingHome value) loading,
    required TResult Function(LoadedHome value) loaded,
    required TResult Function(SuccessHome value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialHome value)? initial,
    TResult? Function(ErrorHome value)? error,
    TResult? Function(LoadingHome value)? loading,
    TResult? Function(LoadedHome value)? loaded,
    TResult? Function(SuccessHome value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHome value)? initial,
    TResult Function(ErrorHome value)? error,
    TResult Function(LoadingHome value)? loading,
    TResult Function(LoadedHome value)? loaded,
    TResult Function(SuccessHome value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingHome implements HomeState {
  factory LoadingHome() = _$LoadingHomeImpl;
}

/// @nodoc
abstract class _$$LoadedHomeImplCopyWith<$Res> {
  factory _$$LoadedHomeImplCopyWith(
          _$LoadedHomeImpl value, $Res Function(_$LoadedHomeImpl) then) =
      __$$LoadedHomeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationParams? locationParams});

  $LocationParamsCopyWith<$Res>? get locationParams;
}

/// @nodoc
class __$$LoadedHomeImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadedHomeImpl>
    implements _$$LoadedHomeImplCopyWith<$Res> {
  __$$LoadedHomeImplCopyWithImpl(
      _$LoadedHomeImpl _value, $Res Function(_$LoadedHomeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationParams = freezed,
  }) {
    return _then(_$LoadedHomeImpl(
      locationParams: freezed == locationParams
          ? _value.locationParams
          : locationParams // ignore: cast_nullable_to_non_nullable
              as LocationParams?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationParamsCopyWith<$Res>? get locationParams {
    if (_value.locationParams == null) {
      return null;
    }

    return $LocationParamsCopyWith<$Res>(_value.locationParams!, (value) {
      return _then(_value.copyWith(locationParams: value));
    });
  }
}

/// @nodoc

class _$LoadedHomeImpl implements LoadedHome {
  _$LoadedHomeImpl({this.locationParams});

  @override
  final LocationParams? locationParams;

  @override
  String toString() {
    return 'HomeState.loaded(locationParams: $locationParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedHomeImpl &&
            (identical(other.locationParams, locationParams) ||
                other.locationParams == locationParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedHomeImplCopyWith<_$LoadedHomeImpl> get copyWith =>
      __$$LoadedHomeImplCopyWithImpl<_$LoadedHomeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(LocationParams? locationParams) loaded,
    required TResult Function() success,
  }) {
    return loaded(locationParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function(LocationParams? locationParams)? loaded,
    TResult? Function()? success,
  }) {
    return loaded?.call(locationParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(LocationParams? locationParams)? loaded,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(locationParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialHome value) initial,
    required TResult Function(ErrorHome value) error,
    required TResult Function(LoadingHome value) loading,
    required TResult Function(LoadedHome value) loaded,
    required TResult Function(SuccessHome value) success,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialHome value)? initial,
    TResult? Function(ErrorHome value)? error,
    TResult? Function(LoadingHome value)? loading,
    TResult? Function(LoadedHome value)? loaded,
    TResult? Function(SuccessHome value)? success,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHome value)? initial,
    TResult Function(ErrorHome value)? error,
    TResult Function(LoadingHome value)? loading,
    TResult Function(LoadedHome value)? loaded,
    TResult Function(SuccessHome value)? success,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedHome implements HomeState {
  factory LoadedHome({final LocationParams? locationParams}) = _$LoadedHomeImpl;

  LocationParams? get locationParams;
  @JsonKey(ignore: true)
  _$$LoadedHomeImplCopyWith<_$LoadedHomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessHomeImplCopyWith<$Res> {
  factory _$$SuccessHomeImplCopyWith(
          _$SuccessHomeImpl value, $Res Function(_$SuccessHomeImpl) then) =
      __$$SuccessHomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessHomeImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SuccessHomeImpl>
    implements _$$SuccessHomeImplCopyWith<$Res> {
  __$$SuccessHomeImplCopyWithImpl(
      _$SuccessHomeImpl _value, $Res Function(_$SuccessHomeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessHomeImpl implements SuccessHome {
  _$SuccessHomeImpl();

  @override
  String toString() {
    return 'HomeState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessHomeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(LocationParams? locationParams) loaded,
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
    TResult? Function(LocationParams? locationParams)? loaded,
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
    TResult Function(LocationParams? locationParams)? loaded,
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
    required TResult Function(InitialHome value) initial,
    required TResult Function(ErrorHome value) error,
    required TResult Function(LoadingHome value) loading,
    required TResult Function(LoadedHome value) loaded,
    required TResult Function(SuccessHome value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialHome value)? initial,
    TResult? Function(ErrorHome value)? error,
    TResult? Function(LoadingHome value)? loading,
    TResult? Function(LoadedHome value)? loaded,
    TResult? Function(SuccessHome value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHome value)? initial,
    TResult Function(ErrorHome value)? error,
    TResult Function(LoadingHome value)? loading,
    TResult Function(LoadedHome value)? loaded,
    TResult Function(SuccessHome value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessHome implements HomeState {
  factory SuccessHome() = _$SuccessHomeImpl;
}
