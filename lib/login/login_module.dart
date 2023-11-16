import 'package:flutter_modular/flutter_modular.dart';

import '../core/core.dart';
import 'login.dart';
///
class LoginModule extends Module {
  ///
  static const BasePath root = BasePath('/');

  @override
  void routes(r) {
    r.child(root.path, child: (context) => const LoginPage());
  }
}
