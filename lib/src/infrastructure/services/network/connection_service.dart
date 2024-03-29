import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

/// A service class for managing connectivity status.
class ConnectivityService {
  ConnectivityService(this._connectivity)
      : _onConnectivityChanged = _connectivity.onConnectivityChanged
            .map(_onResult)
            .asBroadcastStream();
  final Connectivity _connectivity;
  final Stream<bool> _onConnectivityChanged;
  StreamSubscription<bool>? _subscription;
  bool _hasConnection = false;

  Stream<bool> get onConnectivityChanged => _onConnectivityChanged;
  bool get hasActiveConnection => _hasConnection;

  Future<ConnectivityService> init() async {
    final result = await _connectivity.checkConnectivity();
    _subscription = onConnectivityChanged.listen(_onChange);
    _hasConnection = _onResult(result);
    return this;
  }

  void _onChange(bool value) {
    _hasConnection = value;
  }

  static bool _onResult(List<ConnectivityResult> result) {
    bool hasConnection = false;
    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      hasConnection = true;
    }

    return hasConnection;
  }

  void dispose() {
    _subscription?.cancel();
    _subscription = null;
  }
}
