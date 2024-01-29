import 'package:dartz/dartz.dart';

import '../../../../../../core/core.dart';
import '../../domain/entities/variety.dart';
import '../../domain/repositories/variety_repository.dart';
import '../data.dart';

/// Implementation of [IVarietyRepository]
class VarietyRepository implements IVarietyRepository {
  final IHarvestFormDatasource _datasource;

  /// Constructor of [VarietyRepository]
  VarietyRepository(this._datasource);

  @override
  Future<Either<Failure, List<Variety>>> getVarieties() async {
    try {
      final response = await _datasource.getVarieties();
      List<Variety> VarietyList =
          List<Variety>.from(response.map((record) => record.toEntity()));
      return Right(VarietyList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
