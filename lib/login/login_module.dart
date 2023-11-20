import 'dart:io' as io;

import 'package:flutter_modular/flutter_modular.dart';

import '../core/core.dart';
import 'domain/usecases/login_usecase.dart';
import 'login.dart';

/// Login module
class LoginModule extends Module {
  /// base path root to [LoginModule]
  static const BasePath root = BasePath('/');

  @override
  List<ModularRoute> get routes => [
        ChildRoute(root.path, child: (context, _) => const LoginPage()),
      ];

  @override
  List<Bind> get binds => [
        ..._adapters,
        ..._datasources,
        ..._repositories,
        ..._usecases,
      ];

  static List<Bind> get _adapters => [
        Bind.lazySingleton<IHttpClient>(
          (i) => HttpAdapter(
            client: io.HttpClient(),
            baseUrl: (() async => '')(),
          ),
        ),
      ];
  static List<Bind> get _datasources => [
        Bind.lazySingleton<ILoginDatasource>(
          (i) => LoginDatasource(i.get<IHttpClient>()),
        ),
      ];
  static List<Bind> get _repositories => [
        Bind.lazySingleton<ILoginRepository>(
          (i) => LoginRepository(i.get<ILoginDatasource>()),
        ),
      ];
  static List<Bind> get _usecases => [
        Bind.lazySingleton<ILoginUsecase>(
          (i) => LoginUsecase(i.get<ILoginRepository>()),
        ),
      ];

}
