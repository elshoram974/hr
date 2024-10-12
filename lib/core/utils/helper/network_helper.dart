import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/locale/generated/l10n.dart';
import '../functions/show_my_snack_bar.dart';

class NetworkInfo {
  const NetworkInfo();

  static final List<ConnectivityResult> _results = [];

  static Future<void> init() async {
    _results.addAll(await Connectivity().checkConnectivity());
    checkConnectivity();
  }

  static bool get isConnected {
    if (_results.isEmpty) {
      Connectivity().checkConnectivity().then(
        (result) {
          _results.clear();
          _results.addAll(result);
          _networkMethod();
        },
      );
    }
    return !_results.contains(ConnectivityResult.none);
  }

  static void checkConnectivity() {
    Connectivity().onConnectivityChanged.listen(
      (List<ConnectivityResult> result) {
        _results.clear();
        _results.addAll(result);
        _networkMethod();
      },
    );
  }

  static void _networkMethod() {
    if (isConnected) {
      ShowMySnackBar.call(
        S.current.connectedToInternet,
        backgroundColor: Colors.green,
      );
    } else {
      ShowMySnackBar.call(
        S.current.noInternetConnection,
        backgroundColor: Get.theme.colorScheme.error,
      );
    }
  }

  /// [showSnackBarWhenNoInternet] returns true if no Internet connection
  static bool get showSnackBarWhenNoInternet {
    if (isConnected) return false;
    ShowMySnackBar.call(
      S.current.noInternetConnection,
      backgroundColor: Get.theme.colorScheme.error,
    );
    return true;
  }
}
