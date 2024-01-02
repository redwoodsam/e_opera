import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../domain/domain.dart';
import '../data.dart';

/// Implementation of [IFarmRepository]
class FarmRepository implements IFarmRepository {
  final IIntroDatasource _datasource;

  /// Constructor of [FarmRepository]
  FarmRepository(this._datasource);

  @override
  Future<Either<Failure, Unit>> getFarms() async {
    try {
      await _datasource.getFarms();
      return const Right(unit);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
