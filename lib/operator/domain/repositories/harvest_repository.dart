import 'package:dartz/dartz.dart';
import '../../../core/core.dart';

/// Interface to [IHarvestRepository]
abstract class IHarvestRepository {
  Future<Either<Failure, Unit>> getHarvests();
}
