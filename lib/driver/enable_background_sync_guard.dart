import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:workmanager/workmanager.dart';

class EnableBackgroundSyncGuard extends RouteGuard {
  @override
  FutureOr<bool> canActivate(String path, ParallelRoute route) async {
    Workmanager().registerPeriodicTask(
      'driverSync',
      'driverSync',
      frequency: const Duration(minutes: 15),
      initialDelay: const Duration(seconds: 5),
      constraints: Constraints(networkType: NetworkType.connected),
    );

    return Future.value(true);
  }
}
