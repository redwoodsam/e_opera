// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/shipping_company.dart';

part 'shipping_company_model.freezed.dart';
part 'shipping_company_model.g.dart';

///
/// Model params to farm
///
@freezed
class ShippingCompanyModel with _$ShippingCompanyModel {
  const ShippingCompanyModel._();

  ///
  /// [ShippingCompanyModel] default constructor
  ///
  factory ShippingCompanyModel({
    @JsonKey(name: 'codTransportadora') required String shippingCompanyCode,
    @JsonKey(name: 'nreduzTransportadora')
    required String shippingCompanyReducedName,
    @JsonKey(name: 'nomeTransportadora') required String shippingCompanyName,
  }) = _ShippingCompanyModel;

  factory ShippingCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$ShippingCompanyModelFromJson(json);

  factory ShippingCompanyModel.fromEntity(
    ShippingCompany entity,
  ) {
    return ShippingCompanyModel(
      shippingCompanyCode: entity.shippingCompanyCode,
      shippingCompanyReducedName: entity.shippingCompanyReducedName,
      shippingCompanyName: entity.shippingCompanyName,
    );
  }

  ///Creates a [ShippingCompany] from a [ShippingCompanyModel].
  ShippingCompany toEntity() {
    return ShippingCompany(
      shippingCompanyCode: shippingCompanyCode as String,
      shippingCompanyReducedName: shippingCompanyReducedName as String,
      shippingCompanyName: shippingCompanyName as String,
    );
  }
}
