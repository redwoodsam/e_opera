import 'package:dartz/dartz.dart';
import '../../../../../../core/core.dart';
import '../entities/product.dart';

/// Interface to [IProductRepository]
abstract class IProductRepository {
  Future<Either<Failure, List<Product>>> getProducts();
}
