import 'package:dartz/dartz.dart';
import 'package:eopera/driver/domain/repositories/collect_repository.dart';
import 'package:mz_rsa_plugin/mz_rsa_plugin.dart';

import '../../../core/core.dart';
import '../../domain/entities/collect.dart';
import '../../domain/entities/form_data/harvest_form.dart';
import '../../driver.dart';
import '../datasource/interfaces/collect_datasource.dart';
import '../datasource/remote/collect_datasource.dart';
import '../models/request/collect_model.dart';

class CollectRepository implements ICollectRepository {
  final ICollectDatasource _datasource;
  final ICollectLocalDatasource _localDatasource;

  /// Constructor of [CollectRepository]
  CollectRepository(
    this._datasource,
    this._localDatasource,
  );

  @override
  Future<Either<Failure, CollectModel>> collect(CollectModel model) {
    var collect = _datasource.collect(model);
    return collect;
  }

  @override
  Future<Either<Failure, void>> collectLocal() async {
    var list = await _localDatasource.get();
    var listOfFuture = await Future.wait(list.map((element) async {
      return await _datasource.collect(element);
    }));
    return Either.cond(
      () => !listOfFuture.any((element) => element.isLeft()),
      () => null,
      () => Failure.badRequest(),
    );
  }

  @override
  Future<Either<Failure, List<CollectModel>>> getDestinationsRemote() {
    // TODO: implement getDestinationsRemote
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CollectModel>>> getDestinationsLocal() {
    // TODO: implement getDestinationsLocal
    throw UnimplementedError();
  }
}
