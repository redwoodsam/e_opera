import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/core.dart';
import 'main_module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ModularApp(module: MainModule(), child: const MainApp()),
  );
}

/// Main App
class MainApp extends StatelessWidget {
  /// constructor of [MainApp]
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig.init().config(constraints, orientation);
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'eOpera',
              routeInformationParser: Modular.routeInformationParser,
              routerDelegate: Modular.routerDelegate,
              theme: ThemeFactory.buildFor(ThemeType.light),
              darkTheme: ThemeFactory.buildFor(ThemeType.dark),
              locale: const Locale('pt', 'BR'),
            );
          },
        );
      },
    );
  }
}
