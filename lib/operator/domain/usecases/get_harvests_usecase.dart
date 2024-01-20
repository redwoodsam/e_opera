import 'package:dartz/dartz.dart';
import '../../../core/core.dart';
import '../repositories/harvest_repository.dart';

/// Interface to Harvests
abstract class IGetHarvestsUsecase {
  /// Method to get harvests
  Future<Either<Failure, Unit>> call();
}

/// Implementation of [IGetHarvestsUsecase]
class GetHarvestsUsecase implements IGetHarvestsUsecase {
  final IHarvestRepository _repository;

  GetHarvestsUsecase(this._repository);

  @override
  Future<Either<Failure, Unit>> call() async {
    await _repository.getHarvests();

    return const Right(unit);
  }
}
