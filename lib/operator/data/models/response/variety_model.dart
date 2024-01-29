// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/variety.dart';

part 'variety_model.freezed.dart';
part 'variety_model.g.dart';

///
/// Model params to farm
///
@freezed
class VarietyModel with _$VarietyModel {
  const VarietyModel._();

  ///
  /// [VarietyModel] default constructor
  ///
  factory VarietyModel({
    @JsonKey(name: 'codVariedade') required String varietyCode,
    @JsonKey(name: 'desVariedade') required String varietyDescription,
    @JsonKey(name: 'codProduto') required String productCode,
    @JsonKey(name: 'desProduto') required String productDescription,
  }) = _VarietyModel;

  factory VarietyModel.fromJson(Map<String, dynamic> json) =>
      _$VarietyModelFromJson(json);

  factory VarietyModel.fromEntity(
    Variety entity,
  ) {
    return VarietyModel(
      varietyCode: entity.varietyCode,
      varietyDescription: entity.varietyDescription,
      productCode: entity.productCode,
      productDescription: entity.productDescription,
    );
  }

  ///Creates a [Variety] from a [VarietyModel].
  Variety toEntity() {
    return Variety(
      varietyCode: varietyCode as String,
      varietyDescription: varietyDescription as String,
      productCode: productCode as String,
      productDescription: productDescription as String,
    );
  }
}
