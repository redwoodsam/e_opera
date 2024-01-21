// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/farm.dart';

part 'farm_model.freezed.dart';
part 'farm_model.g.dart';

///
/// Model params to farm
///
@freezed
class FarmModel with _$FarmModel {
  const FarmModel._();

  ///
  /// [FarmModel] default constructor
  ///
  const factory FarmModel({
    @JsonKey(name: 'codFazenda') required String farmCode,
    @JsonKey(name: 'nomeFazenda') required String farmName,
    @JsonKey(name: 'codFilial') required String branchCode,
    @JsonKey(name: 'nomeFilial') required String branchName,
  }) = _FarmModel;

  factory FarmModel.fromJson(Map<String, dynamic> json) =>
      _$FarmModelFromJson(json);

  factory FarmModel.fromEntity(
    Farm entity,
  ) {
    return FarmModel(
      farmCode: entity.farmCode,
      farmName: entity.farmName,
      branchCode: entity.branchCode,
      branchName: entity.branchName,
    );
  }

  ///Creates a [Farm] from a [FarmModel].
  Farm toEntity() {
    return Farm(
        branchCode: branchCode,
        branchName: branchName,
        farmCode: farmCode,
        farmName: farmName,);
  }
}
