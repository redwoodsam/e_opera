import '../../login.dart';

class LoginRepository implements ILoginRepository{
  final ILoginDatasource _datasource;

  LoginRepository(this._datasource);

  @override
  Future<void> login()async {
    _datasource.login();

  }

}