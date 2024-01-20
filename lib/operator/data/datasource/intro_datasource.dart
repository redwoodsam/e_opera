

import '../../../../core/core.dart';
import '../models/response/farm_model.dart';

/// Intro Datasource
abstract class IIntroDatasource {
  /// Method to get all farms
  Future<List<FarmModel>> getFarms();
  Future<void> getHarvests();
  Future<void> getFields();
}

/// Implementation of [IIntroDatasource]
class IntroDatasource implements IIntroDatasource {
  final IHttpClient _http;

  /// Constructor of [IntroDatasource]
  IntroDatasource(this._http);

  @override
  Future<List<FarmModel>> getFarms() async {
    final response = await _http.get('fazendas');
    final farmsJson = response.data['fazendas'] as List<Map<String, dynamic>>;

    return List<FarmModel>.from(
        farmsJson.map(FarmModel.fromJson),);
  }

  @override
  Future<void> getHarvests() async {
    // final response = await _http.get('safra');
    // print(response.data['safra']);
  }

  @override
  Future<void> getFields() async {
    // final response = await _http.get('talhao');
    // print(response.data['talhao']);
  }
}
