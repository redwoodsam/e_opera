import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../domain/repositories/field_repository.dart';
import '../data.dart';

/// Implementation of [IFieldRepository]
class FieldRepository implements IFieldRepository {
  final IIntroDatasource _datasource;

  /// Constructor of [FieldRepository]
  FieldRepository(this._datasource);

  @override
  Future<Either<Failure, Unit>> getFields() async {
    try {
      await _datasource.getFields();
      return const Right(unit);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
