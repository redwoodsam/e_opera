import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../domain/domain.dart';
import '../../domain/entities/harvest.dart';
import '../../domain/repositories/harvest_repository.dart';
import '../data.dart';

/// Implementation of [IHarvestRepository]
class HarvestRepository implements IHarvestRepository {
  final IIntroDatasource _datasource;

  /// Constructor of [HarvestRepository]
  HarvestRepository(this._datasource);

  @override
  Future<Either<Failure, List<Harvest>>> getHarvests() async {
    try {
      final response = await _datasource.getHarvests();
      List<Harvest> harvestList =
          List<Harvest>.from(response.map((record) => record.toEntity()));
      return Right(harvestList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
