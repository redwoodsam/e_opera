// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/driver.dart';
import '../../../domain/entities/product.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

///
/// Model params toProduct
///
@freezed
class ProductModel with _$ProductModel {
  const ProductModel._();

  ///
  /// [ProductModel] default constructor
  ///
  factory ProductModel({
    @JsonKey(name: 'desProduto') required String productDescription,
    @JsonKey(name: 'codProduto') required String productCode,
  }) = _Product;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  factory ProductModel.fromEntity(
    Product entity,
  ) {
    return ProductModel(
      productDescription: entity.productDescription,
      productCode: entity.productCode,
    );
  }

  /// Creates a [Product] from a [ProductModel].
  Product toEntity() {
    return Product(
      productDescription: productDescription as String,
      productCode: productCode as String,
    );
  }
}
