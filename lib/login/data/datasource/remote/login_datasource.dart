import '../../../../core/core.dart';
import '../../../login.dart';

/// Login Datasource
abstract class ILoginDatasource {
  /// Method to login
  Future<void> login(LoginParamsModel params);
}

/// Implementation of [ILoginDatasource]
class LoginDatasource implements ILoginDatasource {
  final IHttpClient _http;

  /// Constructor of [LoginDatasource]
  LoginDatasource(this._http);

  @override
  Future<void> login(LoginParamsModel params) async {
    final response = await _http.get('login', query: params.toJson());
    // ignore: avoid_print
    print(response);
  }
}
