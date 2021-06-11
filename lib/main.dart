import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_internet_connection/app/module/home/view/home_view.dart';
import 'package:getx_internet_connection/app/network/binding/network_binding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    title: "Connectivity",
    // initialRoute: AppPages.INITIAL,
    // getPages: AppPage.routes,
    home: HomeView(),
    initialBinding: NetworkBinding(),
  ));
}
