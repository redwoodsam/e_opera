// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/destination.dart';

part 'entity_model.freezed.dart';
part 'entity_model.g.dart';

///
/// Model params to farm
///
@freezed
class EntityModel with _$EntityModel {
  const EntityModel._();

  ///
  /// [EntityModel] default constructor
  ///
  factory EntityModel({
    @JsonKey(name: 'codEntidade') required String entityCode,
    @JsonKey(name: 'nomeEntidade') required String entityName,
    @JsonKey(name: 'lojEntidade') String? entityStore,
    @JsonKey(name: 'nomeLojEntidade') String? entityStoreName,
  }) = EentityModel;

  factory EntityModel.fromJson(Map<String, dynamic> json) =>
      _$EntityModelFromJson(json);

  factory EntityModel.fromEntity(
    Destination entity,
  ) {
    return EntityModel(
      entityCode: entity.destinationCode,
      entityName: entity.destinationName,
    );
  }

  ///Creates a [entity] from a [EntityModel].
  Destination toEntity() {
    return Destination(
      destinationCode: entityCode as String,
      destinationName: entityName as String,
    );
  }
}
