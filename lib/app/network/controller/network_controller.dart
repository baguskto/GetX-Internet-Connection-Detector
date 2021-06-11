import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NetworkController extends GetxController {
  var connectionStatus = 0.obs;
  final _connectivity = Connectivity();
  StreamSubscription<ConnectivityResult> _connectivitySubscription;

  NetworkController();

  @override
  void onInit() {
    super.onInit();
    connectivity();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  Future<void> connectivity() async {
    ConnectivityResult result;
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      print(e.toString());
    }
    return _updateConnectionStatus(result);
  }

  @override
  void onClose() {}

  _updateConnectionStatus(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.wifi:
        return connectionStatus.value = 1;
        break;
      case ConnectivityResult.mobile:
        return connectionStatus.value = 2;
        break;
      case ConnectivityResult.none:
        return connectionStatus.value = 0;
        break;
      default:
        Get.snackbar("No internet", "Check your intenernet connection");
    }
  }
}
