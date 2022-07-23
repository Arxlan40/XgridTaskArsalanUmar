import 'package:get/get.dart';

import '../controllers/home_controller.dart';


///---- app binding for HomeController----////

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
