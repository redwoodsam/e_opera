import 'dart:io' as io;

import 'package:flutter_modular/flutter_modular.dart';

import '../core/core.dart';
import 'data/data.dart';
import 'domain/domain.dart';
import 'presentation/views/home_driver/home_driver_page.dart';
import 'presentation/views/home_driver/home_driver_viewmodel.dart';
import 'presentation/views/qrcode_read/qrcode_read_driver_page.dart';
import 'presentation/views/qrcode_read/qrcode_read_driver_viewmodel.dart';
import 'presentation/views/summary/summary_page.dart';
import 'presentation/views/summary/summary_viewmodel.dart';

/// Login module
class DriverModule extends Module {
  /// base path root to [DriverModule]
  static const BasePath root = BasePath('/driver');

  ///
  static const BasePath home = BasePath('/', root);
  static const BasePath qrCodeScanner = BasePath('/scanner', home);
  // static const BasePath qrCodeSummary = BasePath('/summary', qrCodeScanner);
  static const BasePath qrCodeSummary = BasePath('/summary', home);

  @override
  List<ModularRoute> get routes => [
        ChildRoute(home.path, child: (context, _) => const DriverHomePage()),
        ChildRoute(qrCodeScanner.path,
            child: (context, _) => DriverQrCodeReadPage()),
        // ChildRoute(qrCodeSummary.path, child: (context, _) => SummaryPage()),
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
        // Bind.lazySingleton<IIntroDatasource>(
        //   (i) => IntroDatasource(i.get<IHttpClient>()),
        // ),
      ];
  static List<Bind> get _repositories => [
        // Bind.lazySingleton<IFarmRepository>(
        //   (i) => FarmRepository(i.get<IIntroDatasource>()),
        // ),
        // Bind.lazySingleton<IFieldRepository>(
        //   (i) => FieldRepository(i.get<IIntroDatasource>()),
        // ),
        // Bind.lazySingleton<IHarvestRepository>(
        //   (i) => HarvestRepository(i.get<IIntroDatasource>()),
        // ),
      ];

  static List<Bind> get _usecases => [
        // Bind.factory<IGetFarmsUsecase>(
        //   (i) => GetFarmsUsecase(i.get<IFarmRepository>()),
        // ),
        // Bind.factory<IGetFieldsUsecase>(
        //     (i) => GetFieldsUsecase(i.get<IFieldRepository>())),
        // Bind.factory<IGetHarvestsUsecase>(
        //     (i) => GetHarvestsUsecase(i.get<IHarvestRepository>()))
      ];

  static List<Bind> get _viewmodel => [
        // Bind.lazySingleton<IntroViewModel>(
        //   (i) => IntroViewModel(i.get<IGetFarmsUsecase>(),
        //       i.get<IGetFieldsUsecase>(), i.get<IGetHarvestsUsecase>()),
        // ),
        Bind.lazySingleton<DriverHomeViewModel>((i) => DriverHomeViewModel()),
        Bind.lazySingleton<DriverQrCodeReadViewModel>(
            (i) => DriverQrCodeReadViewModel()),
        // Bind.lazySingleton((i) => SummaryViewModel()),
      ];
}
