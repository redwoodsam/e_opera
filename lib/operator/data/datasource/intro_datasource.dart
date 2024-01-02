import '../../../../core/core.dart';

/// Intro Datasource
abstract class IIntroDatasource {
  /// Method to get all farms
  Future<void> getFarms();
}

/// Implementation of [ILoginDatasource]
class IntroDatasource implements IIntroDatasource {
  final IHttpClient _http;

  /// Constructor of [IntroDatasource]
  IntroDatasource(this._http);

  @override
  Future<void> getFarms() async {
    final response = await _http.get('fazendas');
    print(response.data['fazendas']);
  }
}
