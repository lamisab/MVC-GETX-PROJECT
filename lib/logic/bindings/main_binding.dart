import 'package:get/instance_manager.dart';
import '../controller/main_controller.dart';
import '../controller/settings_controller.dart';

class MainBininding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
    Get.put(SettingController());
  }
}
