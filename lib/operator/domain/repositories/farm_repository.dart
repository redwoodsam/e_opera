import 'package:dartz/dartz.dart';

import '../../../core/core.dart';

/// Interface to [IFarmRepository]
abstract class IFarmRepository{
  /// Method to get login
  Future<Either<Failure, Unit>> getFarms();

}