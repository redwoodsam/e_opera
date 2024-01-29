import 'package:dartz/dartz.dart';

import '../../../../../../core/core.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';
import '../data.dart';

/// Implementation of [IProductRepository]
class ProductRepository implements IProductRepository {
  final IHarvestFormDatasource _datasource;

  /// Constructor of [ProductRepository]
  ProductRepository(this._datasource);

  @override
  Future<Either<Failure, List<Product>>> getProducts() async {
    try {
      final response = await _datasource.getProducts();
      List<Product> harvesProducttList =
          List<Product>.from(response.map((record) => record.toEntity()));
      return Right(harvesProducttList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
