import 'dart:io' as io;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:workmanager/workmanager.dart';

import '../core/core.dart';
import 'data/datasource/interfaces/collect_datasource.dart';
import 'data/datasource/local/collect_datasource.dart';
import 'data/datasource/remote/collect_datasource.dart';
import 'data/models/request/collect_model.dart';
import 'data/repositories/collect_repository.dart';
import 'domain/repositories/collect_repository.dart';
import 'domain/usecases/synchronize_local_database_usecase.dart';

IHttpClient getHttpClient() {
  return HttpAdapter(
    client: io.HttpClient(),
    baseUrl: 'http://198.27.117.155:8094/api/',
    apiVersion: 'v1',
  )..addInterceptors([
      LoggerInterceptor(),
      AuthorizationInterceptor(ModularDependencyManager.i()),
    ]);
}

IStorageClient<List<CollectModel>> getStorageClient() {
  HiveInterface hive = Hive;
  final CollectModelAdapter adapter = CollectModelAdapter();

  if (!(hive.isAdapterRegistered(adapter.typeId))) {
    hive.registerAdapter(adapter);
  }

  return HiveStorageAdapter('@Collect');
}

ICollectDatasource getRemoteCollectDatasource() {
  return CollectDatasource(
    getHttpClient(),
  );
}

ICollectLocalDatasource getLocalCollectDatasource() {
  return CollectLocalDatasource(getStorageClient());
}

ICollectRepository getCollectRepository() {
  return CollectRepository(
    getRemoteCollectDatasource(),
    getLocalCollectDatasource(),
  );
}

ISynchronizeLocalDatabaseUsecase getSyncUseCase() {
  return SynchronizeLocalDatabaseUsecase(
    getCollectRepository(),
  );
}

@pragma('vm:entry-point')
void callbackDispatcher() {
  Hive.initFlutter();
  Workmanager().executeTask((task, inputData) async {
    // Your background task logic goes here
    print('Iniciando sincronia de dados');
    var synchronizeLocalDatabaseUseCase = getSyncUseCase();

    await synchronizeLocalDatabaseUseCase();

    print('Banco de dados sincronizado com sucesso');

    return Future.value(true);
  });
}
