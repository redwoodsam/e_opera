import 'package:dartz/dartz.dart';

import '../../../../../../core/core.dart';
import '../../domain/entities/driver.dart';
import '../../domain/repositories/driver_repository.dart';
import '../data.dart';

/// Implementation of [IDriverRepository]
class DriverRepository implements IDriverRepository {
  final IHarvestFormDatasource _datasource;

  /// Constructor of [DriverRepository]
  DriverRepository(this._datasource);

  @override
  Future<Either<Failure, List<Driver>>> getDrivers() async {
    try {
      final response = await _datasource.getDrivers();
      List<Driver> DriverList =
          List<Driver>.from(response.map((record) => record.toEntity()));
      return Right(DriverList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
