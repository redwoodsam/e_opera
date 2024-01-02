import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/core.dart';
import 'login/login.dart';
import 'operator/operator_module.dart';

/// Main Module
class MainModule extends Module {
  final HiveInterface? _hive;
  MainModule._([this._hive]) {
    _registerAdapters();
  }

  // Register manually one by one, registering dynamically can cause issues
  void _registerAdapters() {
    final loginModelAdapter = LoginModelAdapter();

    if (!(_hive?.isAdapterRegistered(loginModelAdapter.typeId) ?? false)) {
      _hive?.registerAdapter(loginModelAdapter);
    }
  }

  /// creates new instance and register hive adapters
  factory MainModule.forRoot({required HiveInterface hive}) =>
      MainModule._(hive);

  ///
  static const BasePath loginModule = BasePath('/');

  ///
  static const BasePath operatorModule = BasePath('/operator/');

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(loginModule.path, module: LoginModule()),
        ModuleRoute(operatorModule.path, module: OperatorModule()),
      ];
}
