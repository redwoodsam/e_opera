import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

/// Class with verify aways if device has connected on internet
class ConnectionStatusSingleton {
  static final ConnectionStatusSingleton _singleton =
      ConnectionStatusSingleton._internal();

  ConnectionStatusSingleton._internal();

  /// Factoty to singleton
  factory ConnectionStatusSingleton() {
    return _singleton;
  }

  /// This is how we'll allow subscribing to connection changes
  StreamController connectionChangeController = StreamController.broadcast();

  /// This is how we'll allow subscribing to connection changes
  StreamController notificationCountController = StreamController.broadcast();

  // flutter_connectivity
  final Connectivity _connectivity = Connectivity();

  /// Void dispose
  void dispose() {
    connectionChangeController.close();
    notificationCountController.close();
  }

  ///The test to actually see if there is a connection
  Future<bool> hasConnection() async {
    final check = await _connectivity.checkConnectivity();

    return check == ConnectivityResult.wifi ||
        check == ConnectivityResult.mobile;
  }
}
