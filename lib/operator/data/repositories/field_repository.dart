import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../domain/domain.dart';
import '../../domain/entities/field.dart';
import '../../domain/repositories/field_repository.dart';
import '../data.dart';

/// Implementation of [IFieldRepository]
class FieldRepository implements IFieldRepository {
  final IIntroDatasource _datasource;

  /// Constructor of [FieldRepository]
  FieldRepository(this._datasource);

  @override
  Future<Either<Failure, List<Field>>> getFields() async {
    try {
      final response = await _datasource.getFields();
      List<Field> fieldList =
          List<Field>.from(response.map((record) => record.toEntity()));
      return Right(fieldList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
