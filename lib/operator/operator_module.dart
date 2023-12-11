import 'dart:io' as io;

import 'package:flutter_modular/flutter_modular.dart';

import '../core/core.dart';
import 'operator.dart';
import 'presentation/views/home/home.dart';

/// Login module
class OperatorModule extends Module {
  /// base path root to [OperatorModule]
  static const BasePath root = BasePath('/operator');

  /// 
  static const BasePath intro = BasePath('/', root);

  ///
  static const BasePath home = BasePath('/home', root);

  @override
  List<ModularRoute> get routes => [
        ChildRoute(intro.path, child: (context, _) => const OperatorIntroPage()),
        ChildRoute(home.path, child: (context, _) => const HomePage()),
      ];

  @override
  List<Bind> get binds => [
        ..._adapters,
        ..._datasources,
        ..._repositories,
        ..._usecases,
        ..._viewmodel,
      ];

  static List<Bind> get _adapters => [
        Bind.lazySingleton<IHttpClient>(
          (i) => HttpAdapter(
            client: io.HttpClient(),
            baseUrl: (() async => '')(),
          ),
        ),
      ];
  static List<Bind> get _datasources => [];
  static List<Bind> get _repositories => [];
  static List<Bind> get _usecases => [];
  static List<Bind> get _viewmodel => [];
}
