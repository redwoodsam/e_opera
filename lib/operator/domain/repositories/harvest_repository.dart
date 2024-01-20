import 'package:dartz/dartz.dart';
import '../../../core/core.dart';
import '../entities/harvest.dart';

/// Interface to [IHarvestRepository]
abstract class IHarvestRepository {
  Future<Either<Failure, List<Harvest>>> getHarvests();
}
