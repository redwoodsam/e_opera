import '../../../../core/core.dart';

/// Login Datasource
abstract class ILoginDatasource {
  /// Method to login
  Future<void> login();
}

/// Implementation of [ILoginDatasource]
class LoginDatasource implements ILoginDatasource{
  final IHttpClient _http;

  /// Constructor of [LoginDatasource]
  LoginDatasource(this._http);


  @override
  Future<void> login() async {
   final response = await _http.get('https://www.google.com.br', apiVersion: '');
   print(response);
  }

}