import 'package:flutter_asro_shop/logic/controller/product_controller.dart';
import 'package:get/instance_manager.dart';

import '../controller/cart_controller.dart';
import '../controller/category_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
    Get.lazyPut(() => CartController());
    Get.put(CategoryController());
  }
}
