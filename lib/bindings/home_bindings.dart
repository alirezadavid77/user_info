import 'package:get/get.dart';
import 'package:user_infos/view-model/home_controller.dart';

import '../dummy.dart';

class HomeBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ApiService());
     Get.put(HomeController());
  }

}