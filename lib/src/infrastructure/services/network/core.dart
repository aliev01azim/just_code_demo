import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../di.dart';
import '../../../common_ui/widgets/no_connection_state.dart';

/// An abstract interface class for managing restartable states.
///
/// Classes implementing this interface are responsible for managing the state
/// that can be loaded, reloaded, and checked for the need of reloading.

abstract interface class RestartableStateInterface {
  Future<void> loadState();
  Future<void> reloadState();
  bool shouldReload();
}

/// This mixin extends the capabilities of a stateful widget by adding
/// connection-aware behavior. It manages connectivity changes and allows
/// reloading the state when the connection is restored,
/// based on the [shouldReload] logic.
///
/// The mixin requires the stateful widget it is mixed into to implement the
/// [RestartableStateInterface] interface.
mixin ConnectionAwareMixin<T extends StatefulWidget> on State<T> {
  bool hasConnection = false;
  bool get initialConnectionState;
  Stream<bool> get onConnectivityChanged;
  StreamSubscription<bool>? _subscription;
  void onConnectionStateChange();

  @override
  void initState() {
    super.initState();
    hasConnection = initialConnectionState;
    _subscription = onConnectivityChanged.listen(_onChangeConnection);
  }

  void _onChangeConnection(bool result) {
    hasConnection = result;
    onConnectionStateChange();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    _subscription = null;
    super.dispose();
  }
}
mixin DefaultConnectionAwareStateMixin<T extends StatefulWidget>
    on ConnectionAwareMixin<T> implements RestartableStateInterface {
  @override
  Stream<bool> get onConnectivityChanged =>
      di.connectivityService.onConnectivityChanged;

  @override
  bool get initialConnectionState => di.connectivityService.hasActiveConnection;

  @override
  void initState() {
    super.initState();
    reloadState();
  }

  @override
  Future<void> reloadState() async {
    await loadState();
  }

  @override
  Future<void> loadState() async {
    setState(() {});
  }

  @override
  bool shouldReload() => true;

  /// Default implementation for handling changes in connection status within
  /// a [ConnectionAwareMixin] mixin.
  ///
  /// This method is automatically called when the connection status changes.
  /// It provides a default behavior for responding to changes in connection state.
  /// If [hasConnection] is `true` and the [shouldReload] method returns `true`,
  /// the [reloadState] method is called to reload the state. If either condition
  /// is not met, a call to [setState] is made to update the UI based on the
  /// current connection status.
  @override
  void onConnectionStateChange() {
    if (hasConnection && shouldReload()) {
      reloadState();
    } else {
      setState(() {});
    }
  }

  Widget buildPage(BuildContext context);
  @protected
  @override
  Widget build(BuildContext context) {
    if (hasConnection) {
      return buildPage(context);
    } else {
      return const NoConnectionStateWidget(
          // onRetry: reloadState,
          );
    }
  }
}
