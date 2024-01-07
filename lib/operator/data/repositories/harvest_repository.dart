import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../domain/domain.dart';
import '../../domain/repositories/harvest_repository.dart';
import '../data.dart';

/// Implementation of [IHarvestRepository]
class HarvestRepository implements IHarvestRepository {
  final IIntroDatasource _datasource;

  /// Constructor of [HarvestRepository]
  HarvestRepository(this._datasource);

  @override
  Future<Either<Failure, Unit>> getHarvests() async {
    try {
      await _datasource.getHarvests();
      return const Right(unit);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
