// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntityModel _$EntityModelFromJson(Map<String, dynamic> json) {
  return EentityModel.fromJson(json);
}

/// @nodoc
mixin _$EntityModel {
  @JsonKey(name: 'codEntidade')
  String get entityCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'nomeEntidade')
  String get entityName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lojEntidade')
  String? get entityStore => throw _privateConstructorUsedError;
  @JsonKey(name: 'nomeLojEntidade')
  String? get entityStoreName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityModelCopyWith<EntityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityModelCopyWith<$Res> {
  factory $EntityModelCopyWith(
          EntityModel value, $Res Function(EntityModel) then) =
      _$EntityModelCopyWithImpl<$Res, EntityModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'codEntidade') String entityCode,
      @JsonKey(name: 'nomeEntidade') String entityName,
      @JsonKey(name: 'lojEntidade') String? entityStore,
      @JsonKey(name: 'nomeLojEntidade') String? entityStoreName});
}

/// @nodoc
class _$EntityModelCopyWithImpl<$Res, $Val extends EntityModel>
    implements $EntityModelCopyWith<$Res> {
  _$EntityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityCode = null,
    Object? entityName = null,
    Object? entityStore = freezed,
    Object? entityStoreName = freezed,
  }) {
    return _then(_value.copyWith(
      entityCode: null == entityCode
          ? _value.entityCode
          : entityCode // ignore: cast_nullable_to_non_nullable
              as String,
      entityName: null == entityName
          ? _value.entityName
          : entityName // ignore: cast_nullable_to_non_nullable
              as String,
      entityStore: freezed == entityStore
          ? _value.entityStore
          : entityStore // ignore: cast_nullable_to_non_nullable
              as String?,
      entityStoreName: freezed == entityStoreName
          ? _value.entityStoreName
          : entityStoreName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EentityModelImplCopyWith<$Res>
    implements $EntityModelCopyWith<$Res> {
  factory _$$EentityModelImplCopyWith(
          _$EentityModelImpl value, $Res Function(_$EentityModelImpl) then) =
      __$$EentityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'codEntidade') String entityCode,
      @JsonKey(name: 'nomeEntidade') String entityName,
      @JsonKey(name: 'lojEntidade') String? entityStore,
      @JsonKey(name: 'nomeLojEntidade') String? entityStoreName});
}

/// @nodoc
class __$$EentityModelImplCopyWithImpl<$Res>
    extends _$EntityModelCopyWithImpl<$Res, _$EentityModelImpl>
    implements _$$EentityModelImplCopyWith<$Res> {
  __$$EentityModelImplCopyWithImpl(
      _$EentityModelImpl _value, $Res Function(_$EentityModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityCode = null,
    Object? entityName = null,
    Object? entityStore = freezed,
    Object? entityStoreName = freezed,
  }) {
    return _then(_$EentityModelImpl(
      entityCode: null == entityCode
          ? _value.entityCode
          : entityCode // ignore: cast_nullable_to_non_nullable
              as String,
      entityName: null == entityName
          ? _value.entityName
          : entityName // ignore: cast_nullable_to_non_nullable
              as String,
      entityStore: freezed == entityStore
          ? _value.entityStore
          : entityStore // ignore: cast_nullable_to_non_nullable
              as String?,
      entityStoreName: freezed == entityStoreName
          ? _value.entityStoreName
          : entityStoreName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EentityModelImpl extends EentityModel {
  _$EentityModelImpl(
      {@JsonKey(name: 'codEntidade') required this.entityCode,
      @JsonKey(name: 'nomeEntidade') required this.entityName,
      @JsonKey(name: 'lojEntidade') this.entityStore,
      @JsonKey(name: 'nomeLojEntidade') this.entityStoreName})
      : super._();

  factory _$EentityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EentityModelImplFromJson(json);

  @override
  @JsonKey(name: 'codEntidade')
  final String entityCode;
  @override
  @JsonKey(name: 'nomeEntidade')
  final String entityName;
  @override
  @JsonKey(name: 'lojEntidade')
  final String? entityStore;
  @override
  @JsonKey(name: 'nomeLojEntidade')
  final String? entityStoreName;

  @override
  String toString() {
    return 'EntityModel(entityCode: $entityCode, entityName: $entityName, entityStore: $entityStore, entityStoreName: $entityStoreName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EentityModelImpl &&
            (identical(other.entityCode, entityCode) ||
                other.entityCode == entityCode) &&
            (identical(other.entityName, entityName) ||
                other.entityName == entityName) &&
            (identical(other.entityStore, entityStore) ||
                other.entityStore == entityStore) &&
            (identical(other.entityStoreName, entityStoreName) ||
                other.entityStoreName == entityStoreName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, entityCode, entityName, entityStore, entityStoreName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EentityModelImplCopyWith<_$EentityModelImpl> get copyWith =>
      __$$EentityModelImplCopyWithImpl<_$EentityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EentityModelImplToJson(
      this,
    );
  }
}

abstract class EentityModel extends EntityModel {
  factory EentityModel(
          {@JsonKey(name: 'codEntidade') required final String entityCode,
          @JsonKey(name: 'nomeEntidade') required final String entityName,
          @JsonKey(name: 'lojEntidade') final String? entityStore,
          @JsonKey(name: 'nomeLojEntidade') final String? entityStoreName}) =
      _$EentityModelImpl;
  EentityModel._() : super._();

  factory EentityModel.fromJson(Map<String, dynamic> json) =
      _$EentityModelImpl.fromJson;

  @override
  @JsonKey(name: 'codEntidade')
  String get entityCode;
  @override
  @JsonKey(name: 'nomeEntidade')
  String get entityName;
  @override
  @JsonKey(name: 'lojEntidade')
  String? get entityStore;
  @override
  @JsonKey(name: 'nomeLojEntidade')
  String? get entityStoreName;
  @override
  @JsonKey(ignore: true)
  _$$EentityModelImplCopyWith<_$EentityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
