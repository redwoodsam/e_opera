import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';

import '../../../core/core.dart';
import '../../login.dart';

/// Implementation of [ILoginRepository]
class LoginRepository implements ILoginRepository {
  final ILoginDatasource _datasource;

  /// Constructor of [LoginRepository]
  LoginRepository(this._datasource);

  @override
  Future<Either<Failure, Unit>> login(LoginParams params) async {
    try {
      await _datasource.login(LoginParamsModel.fromEntity(params));

      return const Right(unit);
    } catch (error) {
      Logger().e(error);
      return const Left(Failure.badRequest());
    }
  }
}
