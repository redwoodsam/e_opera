import 'package:flutter_modular/flutter_modular.dart';

import 'core/core.dart';
import 'login/login_module.dart';
import 'operator/operator_module.dart';

/// Main Module
class MainModule extends Module {
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
