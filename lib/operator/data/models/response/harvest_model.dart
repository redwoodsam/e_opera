// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/harvest.dart';

part 'harvest_model.freezed.dart';
part 'harvest_model.g.dart';

///
/// Model params to farm
///
@freezed
class HarvestModel with _$HarvestModel {
  const HarvestModel._();

  ///
  /// [HarvestModel] default constructor
  ///
  factory HarvestModel({
    @JsonKey(name: 'desSafra') required String desSafra,
    @JsonKey(name: 'codigoSafra') required String codigoSafra,
  }) = _HarvestModel;

  factory HarvestModel.fromJson(Map<String, dynamic> json) =>
      _$HarvestModelFromJson(json);

  factory HarvestModel.fromEntity(
    Harvest entity,
  ) {
    return HarvestModel(
      desSafra: entity.description,
      codigoSafra: entity.code,
    );
  }

  ///Creates a [Harvest] from a [HarvestModel].
  Harvest toEntity() {
    return Harvest(
        description: desSafra as String, code: codigoSafra as String);
  }
}
