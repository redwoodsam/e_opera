import 'package:dartz/dartz.dart';

import '../../../../../../core/core.dart';
import '../entities/vehicle.dart';

/// Interface to [IVehicleRepository]
abstract class IVehicleRepository {
  /// Method to get login
  Future<Either<Failure, List<Vehicle>>> getVehicles();
}
