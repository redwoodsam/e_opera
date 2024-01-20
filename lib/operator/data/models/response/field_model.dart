// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/field.dart';

part 'field_model.freezed.dart';
part 'field_model.g.dart';

///
/// Model params to field
///
@freezed
class FieldModel with _$FieldModel {
  const FieldModel._();

  ///
  /// [FieldModel] default constructor
  ///
  factory FieldModel({
    @JsonKey(name: 'desTalhao') required String fieldDescription,
    @JsonKey(name: 'codTalhao') required String fieldCode,
    @JsonKey(name: 'safraTalhao') required String harvestField,
    @JsonKey(name: 'fazendaTalhao') required String farmField,
    @JsonKey(name: 'produtoTalhao') required String productField,
    @JsonKey(name: 'desProduto') required String productDescription,
    @JsonKey(name: 'codVariedade') required String varietyCode,
    @JsonKey(name: 'desVariedade') required String varietyDescription,
  }) = _Field;

  factory FieldModel.fromJson(Map<String, dynamic> json) =>
      _$FieldModelFromJson(json);

  factory FieldModel.fromEntity(
    Field entity,
  ) {
    return FieldModel(
        fieldDescription: entity.fieldDescription,
        fieldCode: entity.fieldCode,
        harvestField: entity.harvestField,
        farmField: entity.farmField,
        productField: entity.productField,
        productDescription: entity.productDescription,
        varietyCode: entity.varietyCode,
        varietyDescription: entity.varietyDescription);
  }

  /// Creates a [Field] from a [FieldModel].
  Field toEntity() {
    return Field(
        fieldDescription: fieldDescription as String,
        fieldCode: fieldCode as String,
        harvestField: harvestField as String,
        farmField: farmField as String,
        productField: productField as String,
        productDescription: productDescription as String,
        varietyCode: varietyCode as String,
        varietyDescription: varietyDescription as String);
  }
}
