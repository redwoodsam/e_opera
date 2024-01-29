import 'dart:io' as io;

import 'package:flutter_modular/flutter_modular.dart';

import '../core/core.dart';
import 'data/data.dart';
import 'data/repositories/product_repository.dart';
import 'data/repositories/shipping_company_repository.dart';
import 'data/repositories/vehicle_repository.dart';
import 'domain/domain.dart';
import 'domain/repositories/destination_repository.dart';
import 'domain/repositories/driver_repository.dart';
import 'domain/repositories/field_repository.dart';
import 'domain/repositories/harvest_repository.dart';
import 'domain/repositories/product_repository.dart';
import 'domain/repositories/shipping_company_repository.dart';
import 'domain/repositories/variety_repository.dart';
import 'domain/repositories/vehicle_repository.dart';
import 'domain/usecases/get_destinations_usecase.dart';
import 'domain/usecases/get_drivers_usecase.dart';
import 'domain/usecases/get_fields_usecase.dart';
import 'domain/usecases/get_harvests_usecase.dart';
import 'domain/usecases/get_products_usecase.dart';
import 'domain/usecases/get_shipping_companies_usecase.dart';
import 'domain/usecases/get_varieties_usecase.dart';
import 'domain/usecases/get_vehicles_usecase.dart';
import 'operator.dart';
import 'presentation/views/destination_form/destination_data_viewmodel.dart';
import 'presentation/views/driver_form/driver_data_viewmodel.dart';
import 'presentation/views/home/home_viewmodel.dart';
import 'presentation/views/product_form/product_data_viewmodel.dart';
import 'presentation/views/qr_code_viewer/qr_code_viewer_page.dart';
import 'presentation/views/summary/summary_viewmodel.dart';

/// Login module
class OperatorModule extends Module {
  /// base path root to [OperatorModule]
  static const BasePath root = BasePath('/operator');

  ///
  static const BasePath intro = BasePath('/', root);

  ///
  static const BasePath home = BasePath('/home', root);

  ///
  static const BasePath productForm = BasePath('/product', root);

  ///
  static const BasePath driverForm = BasePath('/driver', root);

  ///
  static const BasePath destinationForm = BasePath('/destination', root);

  static const BasePath summaryPage = BasePath('/summary', root);

  static const BasePath qrCodeGenerator = BasePath('/qr_code_generator', root);

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          intro.path,
          child: (context, _) => const OperatorIntroPage(),
        ),
        ChildRoute(
          home.path,
          child: (context, _) => const HomePage(),
        ),
        ChildRoute(
          productForm.path,
          child: (context, _) => ProductDataPage(),
        ),
        ChildRoute(
          driverForm.path,
          child: (context, _) => DriverDataPage(),
        ),
        ChildRoute(
          destinationForm.path,
          child: (context, _) => DestinationDataPage(),
        ),
        ChildRoute(
          summaryPage.path,
          child: (context, _) => SummaryPage(),
        ),
        ChildRoute(
          qrCodeGenerator.path,
          child: (context, _) => QrCodeViewerPage(),
        ),
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
        Bind.lazySingleton<IHarvestFormDatasource>(
          (i) => HarvestFormDatasource(i.get<IHttpClient>()),
        ),
      ];
  static List<Bind> get _repositories => [
        Bind.lazySingleton<IFarmRepository>(
          (i) => FarmRepository(i.get<IIntroDatasource>()),
        ),
        Bind.lazySingleton<IFieldRepository>(
          (i) => FieldRepository(i.get<IIntroDatasource>()),
        ),
        Bind.lazySingleton<IHarvestRepository>(
          (i) => HarvestRepository(i.get<IIntroDatasource>()),
        ),
        Bind.lazySingleton<IProductRepository>(
          (i) => ProductRepository(i.get<IHarvestFormDatasource>()),
        ),
        Bind.lazySingleton<IDriverRepository>(
          (i) => DriverRepository(i.get<IHarvestFormDatasource>()),
        ),
        Bind.lazySingleton<IVarietyRepository>(
          (i) => VarietyRepository(i.get<IHarvestFormDatasource>()),
        ),
        Bind.lazySingleton<IDestinationRepository>(
          (i) => DestinationRepository(i.get<IHarvestFormDatasource>()),
        ),
        Bind.lazySingleton<IShippingCompanyRepository>(
          (i) => ShippingCompanyRepository(i.get<IHarvestFormDatasource>()),
        ),
        Bind.lazySingleton<IVehicleRepository>(
          (i) => VehicleRepository(i.get<IHarvestFormDatasource>()),
        ),
      ];

  static List<Bind> get _usecases => [
        Bind.factory<IGetFarmsUsecase>(
          (i) => GetFarmsUsecase(i.get<IFarmRepository>()),
        ),
        Bind.factory<IGetFieldsUsecase>(
          (i) => GetFieldsUsecase(i.get<IFieldRepository>()),
        ),
        Bind.factory<IGetHarvestsUsecase>(
          (i) => GetHarvestsUsecase(i.get<IHarvestRepository>()),
        ),
        Bind.factory<IGetDriversUsecase>(
          (i) => GetDriversUsecase(i.get<IDriverRepository>()),
        ),
        Bind.factory<IGetVarietiesUsecase>(
          (i) => GetVarietiesUsecase(i.get<IVarietyRepository>()),
        ),
        Bind.factory<IGetProductsUsecase>(
          (i) => GetProductsUsecase(i.get<IProductRepository>()),
        ),
        Bind.factory<IGetDestinationsUsecase>(
          (i) => GetDestinationsUsecase(i.get<IDestinationRepository>()),
        ),
        Bind.factory<IGetShippingCompaniesUsecase>(
          (i) =>
              GetShippingCompaniesUsecase(i.get<IShippingCompanyRepository>()),
        ),
        Bind.factory<IGetVehiclesUsecase>(
          (i) => GetVehiclesUsecase(i.get<IVehicleRepository>()),
        ),
      ];

  static List<Bind> get _viewmodel => [
        Bind.lazySingleton<IntroViewModel>(
          (i) => IntroViewModel(
            i.get<IGetFarmsUsecase>(),
            i.get<IGetFieldsUsecase>(),
            i.get<IGetHarvestsUsecase>(),
          ),
        ),
        Bind.lazySingleton<HomeViewModel>(
          (i) => HomeViewModel(),
        ),
        Bind.lazySingleton<ProductDataViewModel>(
          (i) => ProductDataViewModel(
            i.get<IGetDriversUsecase>(),
            i.get<IGetProductsUsecase>(),
            i.get<IGetVarietiesUsecase>(),
          ),
        ),
        Bind.lazySingleton<DriverDataViewModel>(
          (i) => DriverDataViewModel(
            i.get<IGetShippingCompaniesUsecase>(),
            i.get<IGetVehiclesUsecase>(),
          ),
        ),
        Bind.lazySingleton<DestinationDataViewModel>(
          (i) => DestinationDataViewModel(
            i.get<IGetDestinationsUsecase>(),
          ),
        ),
        Bind.lazySingleton<SummaryViewModel>(
          (i) => SummaryViewModel(),
        ),
      ];
}
