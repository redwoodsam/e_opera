import 'package:dartz/dartz.dart';

import '../../../../../../core/core.dart';
import '../../domain/entities/vehicle.dart';
import '../../domain/repositories/vehicle_repository.dart';
import '../data.dart';

/// Implementation of [IVehicleRepository]
class VehicleRepository implements IVehicleRepository {
  final IHarvestFormDatasource _datasource;

  /// Constructor of [VehicleRepository]
  VehicleRepository(this._datasource);

  @override
  Future<Either<Failure, List<Vehicle>>> getVehicles() async {
    try {
      final response = await _datasource.getVehicles();
      List<Vehicle> vehicleList =
          List<Vehicle>.from(response.map((record) => record.toEntity()));
      return Right(vehicleList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
