// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/destination.dart';

part 'subsidiary_model.freezed.dart';
part 'subsidiary_model.g.dart';

///
/// Model params to farm
///
@freezed
class SubsidiaryModel with _$SubsidiaryModel {
  const SubsidiaryModel._();

  ///
  /// [SubsidiaryModel] default constructor
  ///
  factory SubsidiaryModel({
    @JsonKey(name: 'codFilial') required String subsidiaryCode,
    @JsonKey(name: 'nomeFilial') required String subsidiaryName,
    @JsonKey(name: 'empresaFilial') String? companyName,
  }) = _SubsidiaryModel;

  factory SubsidiaryModel.fromJson(Map<String, dynamic> json) =>
      _$SubsidiaryModelFromJson(json);

  factory SubsidiaryModel.fromEntity(
    Destination entity,
  ) {
    return SubsidiaryModel(
      subsidiaryCode: entity.destinationCode,
      subsidiaryName: entity.destinationName,
      companyName: '',
    );
  }

  ///Creates a [Subsidiary] from a [SubsidiaryModel].
  Destination toEntity() {
    return Destination(
      destinationCode: subsidiaryCode as String,
      destinationName: subsidiaryName as String,
    );
  }
}
