import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_internet_connection/app/network/controller/network_controller.dart';

class HomeView extends GetView {
  final con = Get.put(NetworkController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Obx(
        () => Text(con.connectionStatus.value == 1
            ? "WIFI"
            : con.connectionStatus.value == 2
                ? "Mobile"
                : "No Internet"),
      )),
    );
  }
}
