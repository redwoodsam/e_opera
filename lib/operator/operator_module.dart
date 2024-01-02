import 'dart:io' as io;

import 'package:flutter_modular/flutter_modular.dart';

import '../core/core.dart';
import 'data/data.dart';
import 'domain/domain.dart';
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
        ChildRoute(
          intro.path,
          child: (context, _) => const OperatorIntroPage(),
        ),
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
            baseUrl: 'http://198.27.117.155:8094/api/',
            apiVersion: 'v1',
          )..addInterceptors([
              LoggerInterceptor(),
              AuthorizationInterceptor(ModularDependencyManager.i()),
            ]),
        ),
      ];
  static List<Bind> get _datasources => [
        Bind.lazySingleton<IIntroDatasource>(
          (i) => IntroDatasource(i.get<IHttpClient>()),
        ),
      ];
  static List<Bind> get _repositories => [
        Bind.lazySingleton<IFarmRepository>(
          (i) => FarmRepository(i.get<IIntroDatasource>()),
        ),
      ];
  static List<Bind> get _usecases => [
        Bind.factory<IGetFarmsUsecase>(
          (i) => GetFarmsUsecase(i.get<IFarmRepository>()),
        ),
      ];
  static List<Bind> get _viewmodel => [
        Bind.lazySingleton<IntroViewModel>(
          (i) => IntroViewModel(i.get<IGetFarmsUsecase>()),
        ),
      ];
}
