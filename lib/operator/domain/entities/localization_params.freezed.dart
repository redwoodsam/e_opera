// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localization_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalizationParams {
  String get farm => throw _privateConstructorUsedError;
  String get harvest => throw _privateConstructorUsedError;
  String get field => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalizationParamsCopyWith<LocalizationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationParamsCopyWith<$Res> {
  factory $LocalizationParamsCopyWith(
          LocalizationParams value, $Res Function(LocalizationParams) then) =
      _$LocalizationParamsCopyWithImpl<$Res, LocalizationParams>;
  @useResult
  $Res call({String farm, String harvest, String field});
}

/// @nodoc
class _$LocalizationParamsCopyWithImpl<$Res, $Val extends LocalizationParams>
    implements $LocalizationParamsCopyWith<$Res> {
  _$LocalizationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farm = null,
    Object? harvest = null,
    Object? field = null,
  }) {
    return _then(_value.copyWith(
      farm: null == farm
          ? _value.farm
          : farm // ignore: cast_nullable_to_non_nullable
              as String,
      harvest: null == harvest
          ? _value.harvest
          : harvest // ignore: cast_nullable_to_non_nullable
              as String,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalizationParamsImplCopyWith<$Res>
    implements $LocalizationParamsCopyWith<$Res> {
  factory _$$LocalizationParamsImplCopyWith(_$LocalizationParamsImpl value,
          $Res Function(_$LocalizationParamsImpl) then) =
      __$$LocalizationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String farm, String harvest, String field});
}

/// @nodoc
class __$$LocalizationParamsImplCopyWithImpl<$Res>
    extends _$LocalizationParamsCopyWithImpl<$Res, _$LocalizationParamsImpl>
    implements _$$LocalizationParamsImplCopyWith<$Res> {
  __$$LocalizationParamsImplCopyWithImpl(_$LocalizationParamsImpl _value,
      $Res Function(_$LocalizationParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farm = null,
    Object? harvest = null,
    Object? field = null,
  }) {
    return _then(_$LocalizationParamsImpl(
      farm: null == farm
          ? _value.farm
          : farm // ignore: cast_nullable_to_non_nullable
              as String,
      harvest: null == harvest
          ? _value.harvest
          : harvest // ignore: cast_nullable_to_non_nullable
              as String,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalizationParamsImpl extends _LocalizationParams {
  _$LocalizationParamsImpl({this.farm = '', this.harvest = '', this.field = ''})
      : super._();

  @override
  @JsonKey()
  final String farm;
  @override
  @JsonKey()
  final String harvest;
  @override
  @JsonKey()
  final String field;

  @override
  String toString() {
    return 'LocalizationParams(farm: $farm, harvest: $harvest, field: $field)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizationParamsImpl &&
            (identical(other.farm, farm) || other.farm == farm) &&
            (identical(other.harvest, harvest) || other.harvest == harvest) &&
            (identical(other.field, field) || other.field == field));
  }

  @override
  int get hashCode => Object.hash(runtimeType, farm, harvest, field);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizationParamsImplCopyWith<_$LocalizationParamsImpl> get copyWith =>
      __$$LocalizationParamsImplCopyWithImpl<_$LocalizationParamsImpl>(
          this, _$identity);
}

abstract class _LocalizationParams extends LocalizationParams {
  factory _LocalizationParams(
      {final String farm,
      final String harvest,
      final String field}) = _$LocalizationParamsImpl;
  _LocalizationParams._() : super._();

  @override
  String get farm;
  @override
  String get harvest;
  @override
  String get field;
  @override
  @JsonKey(ignore: true)
  _$$LocalizationParamsImplCopyWith<_$LocalizationParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
