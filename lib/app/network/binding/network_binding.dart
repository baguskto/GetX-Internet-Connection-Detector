import 'package:get/get.dart';
import 'package:getx_internet_connection/app/network/controller/network_controller.dart';

class NetworkBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NetworkController());
  }
}
