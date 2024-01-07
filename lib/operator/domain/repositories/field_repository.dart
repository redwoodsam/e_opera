import 'package:dartz/dartz.dart';
import '../../../core/core.dart';

/// Interface to [IFieldRepository]
abstract class IFieldRepository {
  Future<Either<Failure, Unit>> getFields();
}
