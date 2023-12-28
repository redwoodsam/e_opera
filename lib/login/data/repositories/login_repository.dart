import 'package:dartz/dartz.dart';
import 'package:mz_rsa_plugin/mz_rsa_plugin.dart';

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
      final encrypt =
          await MzRsaPlugin.encryptStringByPublicKey(params.password, rsaKey);

      await _datasource.login(
        LoginParamsModel.fromEntity(params.copyWith(password: encrypt)),
      );

      return const Right(unit);
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }
}
