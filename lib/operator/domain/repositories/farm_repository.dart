import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../entities/farm.dart';

/// Interface to [IFarmRepository]
abstract class IFarmRepository {
  /// Method to get login
  Future<Either<Failure, List<Farm>>> getFarms();
}
