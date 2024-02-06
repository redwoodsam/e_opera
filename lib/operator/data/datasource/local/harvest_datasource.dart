import 'dart:async';

import '../../../../core/core.dart';
import '../../../domain/entities/vehicle.dart';
import '../../data.dart';
import '../../models/response/driver_model.dart';
import '../../models/response/entity_model.dart';
import '../../models/response/product_model.dart';
import '../../models/response/shipping_company_model.dart';
import '../../models/response/subsidiary_model.dart';
import '../../models/response/variety_model.dart';
import '../../models/response/vehicle_model.dart';

abstract class IHarvestFormDatasource {
  /// Method to get all farms
  Future<List<DriverModel>> getDrivers();
  Future<List<ProductModel>> getProducts();
  Future<List<VarietyModel>> getVarieties();
  Future<List<VehicleModel>> getVehicles();
  Future<List<ShippingCompanyModel>> getShippingCompanies();
  Future<List<EntityModel>> getEntities();
  Future<List<SubsidiaryModel>> getSubsidiaries();

  /// Clear the entire storage
  FutureOr<void> clearDrivers();
  FutureOr<void> clearProducts();
  FutureOr<void> clearVarieties();
  FutureOr<void> clearVehicles();
  FutureOr<void> clearShippingCompanies();
  FutureOr<void> clearEntities();
  FutureOr<void> clearSubsidiaries();

  /// save a [LoginModel]
  FutureOr<void> saveDrivers(List<DriverModel> items);
  FutureOr<void> saveProducts(List<HarvestModel> items);
  FutureOr<void> saveVarieties(List<FieldModel> items);
  FutureOr<void> saveVehicles(List<VehicleModel> items);
  FutureOr<void> saveShippingCompanies(List<HarvestModel> items);
  FutureOr<void> saveEntities(List<FieldModel> items);
  FutureOr<void> saveSubsidiaries(List<SubsidiaryModel> items);
}

class HarvestFormDataSource extends IHarvestFormDatasource {

  final IStorageClient<List<DriverModel>> _driverStorageClient;
  final IStorageClient<List<ProductModel>> _driverStorageClient;
  final IStorageClient<List<VarietyModel>> _driverStorageClient;
  final IStorageClient<List<VehicleModel>> _driverStorageClient;
  final IStorageClient<List<DriverModel>> _driverStorageClient;
  final IStorageClient<List<DriverModel>> _driverStorageClient;

  static const String _key = '@Logins';

  List<LoginModel> _loginsCache = [];

  ///
  /// Creates a new instance of [LoginLocalDatasource]
  ///
  LoginLocalDatasource(this._storageClient);

HarvestFormDataSource() {
  tjos
}


  @override
  FutureOr<void> clearDrivers() {
    // TODO: implement clearDrivers
    throw UnimplementedError();
  }

  @override
  FutureOr<void> clearEntities() {
    // TODO: implement clearEntities
    throw UnimplementedError();
  }

  @override
  FutureOr<void> clearProducts() {
    // TODO: implement clearProducts
    throw UnimplementedError();
  }

  @override
  FutureOr<void> clearShippingCompanies() {
    // TODO: implement clearShippingCompanies
    throw UnimplementedError();
  }

  @override
  FutureOr<void> clearSubsidiaries() {
    // TODO: implement clearSubsidiaries
    throw UnimplementedError();
  }

  @override
  FutureOr<void> clearVarieties() {
    // TODO: implement clearVarieties
    throw UnimplementedError();
  }

  @override
  FutureOr<void> clearVehicles() {
    // TODO: implement clearVehicles
    throw UnimplementedError();
  }

  @override
  Future<List<DriverModel>> getDrivers() {
    // TODO: implement getDrivers
    throw UnimplementedError();
  }

  @override
  Future<List<EntityModel>> getEntities() {
    // TODO: implement getEntities
    throw UnimplementedError();
  }

  @override
  Future<List<ProductModel>> getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }

  @override
  Future<List<ShippingCompanyModel>> getShippingCompanies() {
    // TODO: implement getShippingCompanies
    throw UnimplementedError();
  }

  @override
  Future<List<SubsidiaryModel>> getSubsidiaries() {
    // TODO: implement getSubsidiaries
    throw UnimplementedError();
  }

  @override
  Future<List<VarietyModel>> getVarieties() {
    // TODO: implement getVarieties
    throw UnimplementedError();
  }

  @override
  Future<List<VehicleModel>> getVehicles() {
    // TODO: implement getVehicles
    throw UnimplementedError();
  }

  @override
  FutureOr<void> saveDrivers(List<DriverModel> items) {
    // TODO: implement saveDrivers
    throw UnimplementedError();
  }

  @override
  FutureOr<void> saveEntities(List<FieldModel> items) {
    // TODO: implement saveEntities
    throw UnimplementedError();
  }

  @override
  FutureOr<void> saveProducts(List<HarvestModel> items) {
    // TODO: implement saveProducts
    throw UnimplementedError();
  }

  @override
  FutureOr<void> saveShippingCompanies(List<HarvestModel> items) {
    // TODO: implement saveShippingCompanies
    throw UnimplementedError();
  }

  @override
  FutureOr<void> saveSubsidiaries(List<SubsidiaryModel> items) {
    // TODO: implement saveSubsidiaries
    throw UnimplementedError();
  }

  @override
  FutureOr<void> saveVarieties(List<FieldModel> items) {
    // TODO: implement saveVarieties
    throw UnimplementedError();
  }

  @override
  FutureOr<void> saveVehicles(List<VehicleModel> items) {
    // TODO: implement saveVehicles
    throw UnimplementedError();
  }
}
