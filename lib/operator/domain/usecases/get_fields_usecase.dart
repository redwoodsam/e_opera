import 'package:dartz/dartz.dart';
import '../../../core/core.dart';
import '../domain.dart';
import '../repositories/field_repository.dart';

/// Interface to Fields
abstract class IGetFieldsUsecase {
  /// Method to get fields
  Future<Either<Failure, Unit>> call();
}

/// Implementation of [IGetFieldsUsecase]
class GetFieldsUsecase implements IGetFieldsUsecase {
  final IFieldRepository _repository;

  GetFieldsUsecase(this._repository);

  @override
  Future<Either<Failure, Unit>> call() async {
    await _repository.getFields();

    return const Right(unit);
  }
}
