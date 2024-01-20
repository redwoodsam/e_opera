import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../domain/domain.dart';
import '../../domain/entities/farm.dart';
import '../data.dart';

/// Implementation of [IFarmRepository]
class FarmRepository implements IFarmRepository {
  final IIntroDatasource _datasource;

  /// Constructor of [FarmRepository]
  FarmRepository(this._datasource);

  @override
  Future<Either<Failure, List<Farm>>> getFarms() async {
    try {
      final response = await _datasource.getFarms();
      List<Farm> farmList =
          List<Farm>.from(response.map((record) => record.toEntity()));
      return Right(farmList);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
