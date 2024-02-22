import 'package:dartz/dartz.dart';
import 'package:eopera/core/domain/validations/failure.dart';
import 'package:eopera/driver/domain/repositories/collect_repository.dart';

import '../../data/models/request/collect_model.dart';
import '../entities/form_data/harvest_form.dart';

abstract class ISynchronizeLocalDatabaseUsecase {
  /// Method to getDestinations
  Future<Either<Failure, void>> call();
}

class SynchronizeLocalDatabaseUsecase
    implements ISynchronizeLocalDatabaseUsecase {
  final ICollectRepository _collectRepository;

  /// Constructor of [UpdateLocalDatabaseUsecase]
  SynchronizeLocalDatabaseUsecase(
    this._collectRepository,
  );

  @override
  Future<Either<Failure, void>> call() async {
    return _collectRepository.collectLocal();
  }
}
