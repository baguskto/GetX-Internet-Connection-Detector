import 'package:get/get.dart';
import 'package:getx_internet_connection/app/module/home/controller/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());

  }
}
