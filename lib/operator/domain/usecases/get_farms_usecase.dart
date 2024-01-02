import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../domain.dart';

/// Interface to login
abstract class IGetFarmsUsecase {
  /// Method to get farms
  Future<Either<Failure, Unit>> call();
}


/// Implementation of [ILoginUsecase]
class GetFarmsUsecase implements IGetFarmsUsecase{
  final IFarmRepository _repository;
  /// Constructor of [GetFarmsUsecase]
  GetFarmsUsecase(this._repository);
  @override
  Future<Either<Failure, Unit>> call() async {
     await _repository.getFarms();
    
    return const Right(unit);
  }

}