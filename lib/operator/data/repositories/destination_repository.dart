import 'package:dartz/dartz.dart';

import '../../../../../../core/core.dart';
import '../../domain/entities/destination.dart';
import '../../domain/repositories/destination_repository.dart';
import '../../domain/repositories/product_repository.dart';
import '../data.dart';

/// Implementation of [IProductRepository]
class DestinationRepository implements IDestinationRepository {
  final IHarvestFormDatasource _datasource;

  /// Constructor of [ProductRepository]
  DestinationRepository(this._datasource);

  @override
  Future<Either<Failure, List<Destination>>> getDestinations() async {
    try {
      final response = await _datasource.getEntities();
      List<Destination> harvesProducttList =
          List<Destination>.from(response.map((record) => record.toEntity()));
      return Right(harvesProducttList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
