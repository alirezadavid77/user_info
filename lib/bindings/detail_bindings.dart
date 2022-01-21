import 'package:get/get.dart';
import 'package:user_infos/view-model/detail_controller.dart';

class DetailBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(DetailController());
    // TODO: implement dependencies
  }

}